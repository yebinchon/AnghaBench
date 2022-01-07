
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct tcp_pcb {int dummy; } ;
struct pbuf {scalar_t__ tot_len; } ;
struct TYPE_6__ {struct tcp_pcb* conn; struct TYPE_6__* next; } ;
typedef TYPE_1__ scan_listener_t ;
typedef scalar_t__ err_t ;
struct TYPE_7__ {scalar_t__ connecting; TYPE_1__* scan_listeners; } ;


 int ENDUSER_SETUP_DEBUG (char*) ;
 int ENDUSER_SETUP_ERROR (char*,int ,int ) ;
 int ENDUSER_SETUP_ERR_NONFATAL ;
 int ENDUSER_SETUP_ERR_OUT_OF_MEMORY ;
 int ENDUSER_SETUP_ERR_UNKOWN_ERROR ;
 scalar_t__ ERR_ABRT ;
 scalar_t__ ERR_MEM ;
 scalar_t__ ERR_OK ;
 int LITLEN (int ) ;
 char* calloc (int,scalar_t__) ;
 int deferred_close (struct tcp_pcb*) ;
 int enduser_setup_handle_OPTIONS (struct tcp_pcb*,char*,unsigned int) ;
 int enduser_setup_handle_POST (struct tcp_pcb*,char*,unsigned int) ;
 int enduser_setup_http_handle_credentials (char*,unsigned int) ;
 int enduser_setup_http_serve_header (struct tcp_pcb*,int ,int ) ;
 scalar_t__ enduser_setup_http_serve_html (struct tcp_pcb*) ;
 int enduser_setup_serve_status (struct tcp_pcb*) ;
 int enduser_setup_serve_status_as_json (struct tcp_pcb*) ;
 int free (char*) ;
 int free_scan_listeners () ;
 int http_header_204 ;
 int http_header_302 ;
 int http_header_400 ;
 int http_header_404 ;
 int http_header_405 ;
 int http_header_500 ;
 TYPE_1__* malloc (int) ;
 int on_scan_done ;
 unsigned int pbuf_copy_partial (struct pbuf*,char*,scalar_t__,int ) ;
 int pbuf_free (struct pbuf*) ;
 int remove_scan_listener (TYPE_1__*) ;
 TYPE_3__* state ;
 scalar_t__ strncmp (char*,char*,int) ;
 int tcp_abort (struct tcp_pcb*) ;
 int tcp_arg (struct tcp_pcb*,TYPE_1__*) ;
 int tcp_recved (struct tcp_pcb*,scalar_t__) ;
 int wifi_station_scan (int *,int ) ;

__attribute__((used)) static err_t enduser_setup_http_recvcb(void *arg, struct tcp_pcb *http_client, struct pbuf *p, err_t err)
{
  ENDUSER_SETUP_DEBUG("enduser_setup_http_recvcb");

  if (!state || err != ERR_OK)
  {
    if (!state)
      ENDUSER_SETUP_DEBUG("ignoring received data while stopped");
    tcp_abort (http_client);
    return ERR_ABRT;
  }

  if (!p)
  {
    ENDUSER_SETUP_DEBUG("connection closed");
    scan_listener_t *l = arg;
    if (l)
      remove_scan_listener (l);

    deferred_close (http_client);
    return ERR_OK;
  }

  char *data = calloc (1, p->tot_len + 1);
  if (!data)
    return ERR_MEM;

  unsigned data_len = pbuf_copy_partial (p, data, p->tot_len, 0);
  tcp_recved (http_client, p->tot_len);
  pbuf_free (p);

  err_t ret = ERR_OK;





  if (strncmp(data, "GET ", 4) == 0)
  {
    if (strncmp(data + 4, "/ ", 2) == 0 || strncmp(data + 4, "/?", 2) == 0)
    {
      if (enduser_setup_http_serve_html(http_client) != 0)
      {
        ENDUSER_SETUP_ERROR("http_recvcb failed. Unable to send HTML.", ENDUSER_SETUP_ERR_UNKOWN_ERROR, ENDUSER_SETUP_ERR_NONFATAL);
      }
      else
      {
        goto free_out;
      }
    }
    else if (strncmp(data + 4, "/aplist", 7) == 0)
    {

      if (state->connecting == 0)
      {
        scan_listener_t *l = malloc (sizeof (scan_listener_t));
        if (!l)
        {
          ENDUSER_SETUP_ERROR("out of memory", ENDUSER_SETUP_ERR_OUT_OF_MEMORY, ENDUSER_SETUP_ERR_NONFATAL);
        }

        bool already = (state->scan_listeners != ((void*)0));

        tcp_arg (http_client, l);

        l->conn = http_client;
        l->next = state->scan_listeners;
        state->scan_listeners = l;

        if (!already)
        {
          if (!wifi_station_scan(((void*)0), on_scan_done))
          {
            enduser_setup_http_serve_header(http_client, http_header_500, LITLEN(http_header_500));
            deferred_close (l->conn);
            l->conn = 0;
            free_scan_listeners();
          }
        }
        goto free_out;
      }
      else
      {

        enduser_setup_http_serve_header(http_client, http_header_204, LITLEN(http_header_204));
      }
    }
    else if (strncmp(data + 4, "/status.json", 12) == 0)
    {
    enduser_setup_serve_status_as_json(http_client);
    }
    else if (strncmp(data + 4, "/status", 7) == 0)
    {
      enduser_setup_serve_status(http_client);
    }

    else if (strncmp(data + 4, "/update?", 8) == 0)
    {
      switch (enduser_setup_http_handle_credentials(data, data_len))
      {
        case 0:
          enduser_setup_http_serve_header(http_client, http_header_302, LITLEN(http_header_302));
          break;
        case 1:
          enduser_setup_http_serve_header(http_client, http_header_400, LITLEN(http_header_400));
          break;
        default:
          ENDUSER_SETUP_ERROR("http_recvcb failed. Failed to handle wifi credentials.", ENDUSER_SETUP_ERR_UNKOWN_ERROR, ENDUSER_SETUP_ERR_NONFATAL);
          break;
      }
    }
    else if (strncmp(data + 4, "/generate_204", 13) == 0)
    {

      enduser_setup_http_serve_header(http_client, http_header_204, LITLEN(http_header_204));
    }
    else
    {
      ENDUSER_SETUP_DEBUG("serving 404");
      enduser_setup_http_serve_header(http_client, http_header_404, LITLEN(http_header_404));
    }
  }
  else if (strncmp(data, "OPTIONS ", 8) == 0)
  {
     enduser_setup_handle_OPTIONS(http_client, data, data_len);
  }
  else if (strncmp(data, "POST ", 5) == 0)
  {
    enduser_setup_handle_POST(http_client, data, data_len);
  }
  else
  {
    enduser_setup_http_serve_header(http_client, http_header_405, LITLEN(http_header_405));
  }

  deferred_close (http_client);

free_out:
  free (data);
  return ret;
}
