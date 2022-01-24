#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int zoutput; size_t sent; scalar_t__ rlen; TYPE_1__* data; } ;
struct web_client {scalar_t__ mode; int /*<<< orphan*/  id; TYPE_2__ response; int /*<<< orphan*/  stats_sent_bytes; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_3__ {scalar_t__ len; int /*<<< orphan*/ * buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_WEB_CLIENT ; 
 int /*<<< orphan*/  MSG_DONTWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct web_client*) ; 
 scalar_t__ WEB_CLIENT_MODE_FILECOPY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct web_client*) ; 
 int /*<<< orphan*/  FUNC5 (struct web_client*) ; 
 scalar_t__ FUNC6 (struct web_client*) ; 
 int /*<<< orphan*/  FUNC7 (struct web_client*) ; 
 scalar_t__ FUNC8 (struct web_client*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct web_client*) ; 

ssize_t FUNC10(struct web_client *w) {
#ifdef NETDATA_WITH_ZLIB
    if(likely(w->response.zoutput)) return web_client_send_deflate(w);
#endif // NETDATA_WITH_ZLIB

    ssize_t bytes;

    if(FUNC3(w->response.data->len - w->response.sent == 0)) {
        // there is nothing to send

        FUNC1(D_WEB_CLIENT, "%llu: Out of output data.", w->id);

        // there can be two cases for this
        // A. we have done everything
        // B. we temporarily have nothing to send, waiting for the buffer to be filled by ifd

        if(w->mode == WEB_CLIENT_MODE_FILECOPY && FUNC6(w) && w->response.rlen && w->response.rlen > w->response.data->len) {
            // we have to wait, more data will come
            FUNC1(D_WEB_CLIENT, "%llu: Waiting for more data to become available.", w->id);
            FUNC4(w);
            return 0;
        }

        if(FUNC3(!FUNC5(w))) {
            FUNC1(D_WEB_CLIENT, "%llu: Closing (keep-alive is not enabled). %zu bytes sent.", w->id, w->response.sent);
            FUNC0(w);
            return 0;
        }

        FUNC7(w);
        FUNC1(D_WEB_CLIENT, "%llu: Done sending all data on socket. Waiting for next request on the same socket.", w->id);
        return 0;
    }

    bytes = FUNC8(w,&w->response.data->buffer[w->response.sent], w->response.data->len - w->response.sent, MSG_DONTWAIT);
    if(FUNC2(bytes > 0)) {
        w->stats_sent_bytes += bytes;
        w->response.sent += bytes;
        FUNC1(D_WEB_CLIENT, "%llu: Sent %zd bytes.", w->id, bytes);
    }
    else if(FUNC2(bytes == 0)) {
        FUNC1(D_WEB_CLIENT, "%llu: Did not send any bytes to the client.", w->id);
        FUNC0(w);
    }
    else {
        FUNC1(D_WEB_CLIENT, "%llu: Failed to send data to client.", w->id);
        FUNC0(w);
    }

    return(bytes);
}