#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_3__* data; } ;
struct TYPE_4__ {scalar_t__ conn; int /*<<< orphan*/  flags; } ;
struct web_client {scalar_t__ mode; int /*<<< orphan*/  id; TYPE_2__ response; int /*<<< orphan*/  stats_received_bytes; int /*<<< orphan*/  ifd; TYPE_1__ ssl; } ;
typedef  int ssize_t ;
struct TYPE_6__ {int size; size_t len; char* buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_WEB_CLIENT ; 
 int /*<<< orphan*/  D_WEB_DATA ; 
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 int /*<<< orphan*/  NETDATA_WEB_REQUEST_RECEIVE_SIZE ; 
 int FUNC0 (scalar_t__,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct web_client*) ; 
 scalar_t__ WEB_CLIENT_MODE_FILECOPY ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ netdata_srv_ctx ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct web_client*) ; 
 int FUNC8 (struct web_client*) ; 

ssize_t FUNC9(struct web_client *w)
{
    if(FUNC6(w->mode == WEB_CLIENT_MODE_FILECOPY))
        return FUNC8(w);

    ssize_t bytes;
    ssize_t left = w->response.data->size - w->response.data->len;

    // do we have any space for more data?
    FUNC2(w->response.data, NETDATA_WEB_REQUEST_RECEIVE_SIZE);

#ifdef ENABLE_HTTPS
    if ( (!web_client_check_unix(w)) && (netdata_srv_ctx) ) {
        if ( ( w->ssl.conn ) && (!w->ssl.flags)) {
            bytes = SSL_read(w->ssl.conn, &w->response.data->buffer[w->response.data->len], (size_t) (left - 1));
        }else {
            bytes = recv(w->ifd, &w->response.data->buffer[w->response.data->len], (size_t) (left - 1), MSG_DONTWAIT);
        }
    }
    else{
        bytes = recv(w->ifd, &w->response.data->buffer[w->response.data->len], (size_t) (left - 1), MSG_DONTWAIT);
    }
#else
    bytes = FUNC5(w->ifd, &w->response.data->buffer[w->response.data->len], (size_t) (left - 1), MSG_DONTWAIT);
#endif

    if(FUNC4(bytes > 0)) {
        w->stats_received_bytes += bytes;

        size_t old = w->response.data->len;
        (void)old;

        w->response.data->len += bytes;
        w->response.data->buffer[w->response.data->len] = '\0';

        FUNC3(D_WEB_CLIENT, "%llu: Received %zd bytes.", w->id, bytes);
        FUNC3(D_WEB_DATA, "%llu: Received data: '%s'.", w->id, &w->response.data->buffer[old]);
    }
    else {
        FUNC3(D_WEB_CLIENT, "%llu: receive data failed.", w->id);
        FUNC1(w);
    }

    return(bytes);
}