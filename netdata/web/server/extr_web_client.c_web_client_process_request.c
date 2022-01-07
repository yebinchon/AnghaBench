
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int rlen; TYPE_3__* data; scalar_t__ sent; void* code; } ;
struct TYPE_7__ {scalar_t__ tv_sec; } ;
struct web_client {int mode; int id; TYPE_1__ response; TYPE_2__ tv_ready; int last_url; int decoded_url; TYPE_2__ tv_in; } ;
struct TYPE_8__ {scalar_t__ len; scalar_t__ date; int buffer; int contenttype; } ;


 int CT_TEXT_HTML ;
 int CT_TEXT_PLAIN ;
 int D_WEB_CLIENT ;
 int D_WEB_CLIENT_ACCESS ;
 void* HTTP_RESP_BAD_REQUEST ;
 void* HTTP_RESP_MOVED_PERM ;
 void* HTTP_RESP_OK ;





 scalar_t__ NETDATA_WEB_REQUEST_MAX_SIZE ;




 int buffer_flush (TYPE_3__*) ;
 int buffer_sprintf (TYPE_3__*,char*,scalar_t__) ;
 int buffer_strcat (TYPE_3__*,char*) ;
 int debug (int ,char*,int ,...) ;
 int fatal (char*,int ,int) ;
 int http_request_validate (struct web_client*) ;
 int localhost ;
 int now_realtime_timeval (TYPE_2__*) ;
 void* rrdpush_receiver_thread_spawn (int ,struct web_client*,int ) ;
 int strcpy (int ,char*) ;
 scalar_t__ unlikely (int) ;
 int web_client_can_access_badges (struct web_client*) ;
 int web_client_can_access_dashboard (struct web_client*) ;
 int web_client_can_access_mgmt (struct web_client*) ;
 int web_client_can_access_netdataconf (struct web_client*) ;
 int web_client_can_access_registry (struct web_client*) ;
 int web_client_can_access_stream (struct web_client*) ;
 int web_client_disable_wait_send (struct web_client*) ;
 int web_client_enable_wait_receive (struct web_client*) ;
 int web_client_enable_wait_send (struct web_client*) ;
 int web_client_permission_denied (struct web_client*) ;
 void* web_client_process_url (int ,struct web_client*,int ) ;
 int web_client_send_http_header (struct web_client*) ;

void web_client_process_request(struct web_client *w) {


    now_realtime_timeval(&w->tv_in);

    switch(http_request_validate(w)) {
        case 133:
            switch(w->mode) {
                case 128:
                    if(unlikely(!web_client_can_access_stream(w))) {
                        web_client_permission_denied(w);
                        return;
                    }

                    w->response.code = rrdpush_receiver_thread_spawn(localhost, w, w->decoded_url);
                    return;

                case 129:
                    if(unlikely(
                            !web_client_can_access_dashboard(w) &&
                            !web_client_can_access_registry(w) &&
                            !web_client_can_access_badges(w) &&
                            !web_client_can_access_mgmt(w) &&
                            !web_client_can_access_netdataconf(w)
                    )) {
                        web_client_permission_denied(w);
                        break;
                    }

                    w->response.data->contenttype = CT_TEXT_PLAIN;
                    buffer_flush(w->response.data);
                    buffer_strcat(w->response.data, "OK");
                    w->response.code = HTTP_RESP_OK;
                    break;

                case 131:
                case 130:
                    if(unlikely(
                            !web_client_can_access_dashboard(w) &&
                            !web_client_can_access_registry(w) &&
                            !web_client_can_access_badges(w) &&
                            !web_client_can_access_mgmt(w) &&
                            !web_client_can_access_netdataconf(w)
                    )) {
                        web_client_permission_denied(w);
                        break;
                    }

                    w->response.code = web_client_process_url(localhost, w, w->decoded_url);
                    break;
            }
            break;

        case 136:
            if(w->response.data->len > NETDATA_WEB_REQUEST_MAX_SIZE) {
                strcpy(w->last_url, "too big request");

                debug(D_WEB_CLIENT_ACCESS, "%llu: Received request is too big (%zu bytes).", w->id, w->response.data->len);

                buffer_flush(w->response.data);
                buffer_sprintf(w->response.data, "Received request is too big  (%zu bytes).\r\n", w->response.data->len);
                w->response.code = HTTP_RESP_BAD_REQUEST;
            }
            else {

                return;
            }
            break;
        case 135:
            debug(D_WEB_CLIENT_ACCESS, "%llu: URL parsing failed (malformed URL). Cannot understand '%s'.", w->id, w->response.data->buffer);

            buffer_flush(w->response.data);
            buffer_strcat(w->response.data, "URL not valid. I don't understand you...\r\n");
            w->response.code = HTTP_RESP_BAD_REQUEST;
            break;
        case 134:
            debug(D_WEB_CLIENT_ACCESS, "%llu: Cannot understand '%s'.", w->id, w->response.data->buffer);

            buffer_flush(w->response.data);
            buffer_strcat(w->response.data, "I don't understand you...\r\n");
            w->response.code = HTTP_RESP_BAD_REQUEST;
            break;
    }


    now_realtime_timeval(&w->tv_ready);

    w->response.sent = 0;


    if(unlikely(!w->response.data->date))
        w->response.data->date = w->tv_ready.tv_sec;

    web_client_send_http_header(w);


    if(w->response.data->len) web_client_enable_wait_send(w);
    else web_client_disable_wait_send(w);

    switch(w->mode) {
        case 128:
            debug(D_WEB_CLIENT, "%llu: STREAM done.", w->id);
            break;

        case 129:
            debug(D_WEB_CLIENT, "%llu: Done preparing the OPTIONS response. Sending data (%zu bytes) to client.", w->id, w->response.data->len);
            break;

        case 130:
            debug(D_WEB_CLIENT, "%llu: Done preparing the response. Sending data (%zu bytes) to client.", w->id, w->response.data->len);
            break;

        case 131:
            if(w->response.rlen) {
                debug(D_WEB_CLIENT, "%llu: Done preparing the response. Will be sending data file of %zu bytes to client.", w->id, w->response.rlen);
                web_client_enable_wait_receive(w);
            }
            else
                debug(D_WEB_CLIENT, "%llu: Done preparing the response. Will be sending an unknown amount of bytes to client.", w->id);
            break;

        default:
            fatal("%llu: Unknown client mode %u.", w->id, w->mode);
            break;
    }
}
