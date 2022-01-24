#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct web_client {scalar_t__ mode; scalar_t__ pollinfo_filecopy_slot; int ifd; int ofd; int /*<<< orphan*/  id; } ;
struct TYPE_6__ {int /*<<< orphan*/  receptions; } ;
struct TYPE_5__ {int fd; scalar_t__ slot; int /*<<< orphan*/  port_acl; int /*<<< orphan*/  p; scalar_t__ data; } ;
typedef  TYPE_1__ POLLINFO ;

/* Variables and functions */
 int /*<<< orphan*/  D_WEB_CLIENT ; 
 short POLLIN ; 
 int /*<<< orphan*/  POLLINFO_FLAG_CLIENT_SOCKET ; 
 short POLLOUT ; 
 scalar_t__ WEB_CLIENT_MODE_FILECOPY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct web_client*) ; 
 scalar_t__ FUNC5 (struct web_client*) ; 
 int /*<<< orphan*/  FUNC6 (struct web_client*) ; 
 scalar_t__ FUNC7 (struct web_client*) ; 
 int FUNC8 (struct web_client*) ; 
 int /*<<< orphan*/  web_server_file_add_callback ; 
 int /*<<< orphan*/  web_server_file_del_callback ; 
 int /*<<< orphan*/  web_server_file_read_callback ; 
 int /*<<< orphan*/  web_server_file_write_callback ; 
 TYPE_2__* worker_private ; 

__attribute__((used)) static int FUNC9(POLLINFO *pi, short int *events) {
    worker_private->receptions++;

    struct web_client *w = (struct web_client *)pi->data;
    int fd = pi->fd;

    //BRING IT TO HERE

    if(FUNC3(FUNC7(w) < 0))
        return -1;

    FUNC0(D_WEB_CLIENT, "%llu: processing received data on fd %d.", w->id, fd);
    FUNC6(w);

    if(FUNC3(w->mode == WEB_CLIENT_MODE_FILECOPY)) {
        if(w->pollinfo_filecopy_slot == 0) {
            FUNC0(D_WEB_CLIENT, "%llu: FILECOPY DETECTED ON FD %d", w->id, pi->fd);

            if (FUNC3(w->ifd != -1 && w->ifd != w->ofd && w->ifd != fd)) {
                // add a new socket to poll_events, with the same
                FUNC0(D_WEB_CLIENT, "%llu: CREATING FILECOPY SLOT ON FD %d", w->id, pi->fd);

                POLLINFO *fpi = FUNC2(
                        pi->p
                        , w->ifd
                        , pi->port_acl
                        , 0
                        , POLLINFO_FLAG_CLIENT_SOCKET
                        , "FILENAME"
                        , ""
                        , ""
                        , web_server_file_add_callback
                        , web_server_file_del_callback
                        , web_server_file_read_callback
                        , web_server_file_write_callback
                        , (void *) w
                );

                if(fpi)
                    w->pollinfo_filecopy_slot = fpi->slot;
                else {
                    FUNC1("Failed to add filecopy fd. Closing client.");
                    return -1;
                }
            }
        }
    }
    else {
        if(FUNC3(w->ifd == fd && FUNC4(w)))
            *events |= POLLIN;
    }

    if(FUNC3(w->ofd == fd && FUNC5(w)))
        *events |= POLLOUT;

    return FUNC8(w);
}