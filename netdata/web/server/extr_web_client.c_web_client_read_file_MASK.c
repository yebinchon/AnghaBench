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
struct TYPE_3__ {scalar_t__ rlen; TYPE_2__* data; } ;
struct web_client {scalar_t__ ifd; scalar_t__ ofd; int /*<<< orphan*/  id; TYPE_1__ response; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_4__ {scalar_t__ size; scalar_t__ len; char* buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_WEB_CLIENT ; 
 int /*<<< orphan*/  D_WEB_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct web_client*) ; 
 scalar_t__ WEB_SERVER_MODE_STATIC_THREADED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (scalar_t__,char*,size_t) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct web_client*) ; 
 int /*<<< orphan*/  FUNC8 (struct web_client*) ; 
 scalar_t__ web_server_mode ; 

ssize_t FUNC9(struct web_client *w)
{
    if(FUNC6(w->response.rlen > w->response.data->size))
        FUNC1(w->response.data, w->response.rlen - w->response.data->size);

    if(FUNC6(w->response.rlen <= w->response.data->len))
        return 0;

    ssize_t left = w->response.rlen - w->response.data->len;
    ssize_t bytes = FUNC5(w->ifd, &w->response.data->buffer[w->response.data->len], (size_t)left);
    if(FUNC4(bytes > 0)) {
        size_t old = w->response.data->len;
        (void)old;

        w->response.data->len += bytes;
        w->response.data->buffer[w->response.data->len] = '\0';

        FUNC3(D_WEB_CLIENT, "%llu: Read %zd bytes.", w->id, bytes);
        FUNC3(D_WEB_DATA, "%llu: Read data: '%s'.", w->id, &w->response.data->buffer[old]);

        FUNC8(w);

        if(w->response.rlen && w->response.data->len >= w->response.rlen)
            FUNC7(w);
    }
    else if(FUNC4(bytes == 0)) {
        FUNC3(D_WEB_CLIENT, "%llu: Out of input file data.", w->id);

        // if we cannot read, it means we have an error on input.
        // if however, we are copying a file from ifd to ofd, we should not return an error.
        // in this case, the error should be generated when the file has been sent to the client.

        // we are copying data from ifd to ofd
        // let it finish copying...
        FUNC7(w);

        FUNC3(D_WEB_CLIENT, "%llu: Read the whole file.", w->id);

        if(web_server_mode != WEB_SERVER_MODE_STATIC_THREADED) {
            if (w->ifd != w->ofd) FUNC2(w->ifd);
        }

        w->ifd = w->ofd;
    }
    else {
        FUNC3(D_WEB_CLIENT, "%llu: read data failed.", w->id);
        FUNC0(w);
    }

    return(bytes);
}