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
struct pollfd {int events; int revents; int /*<<< orphan*/  fd; } ;
struct TYPE_5__ {int /*<<< orphan*/  buf; scalar_t__ c; int /*<<< orphan*/  sfd; } ;
typedef  TYPE_1__ crawler_client_t ;
struct TYPE_6__ {int (* read ) (scalar_t__,char*,int) ;int (* write ) (scalar_t__,unsigned char*,unsigned int) ;} ;
typedef  TYPE_2__ conn ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ EWOULDBLOCK ; 
 int POLLERR ; 
 int POLLHUP ; 
 int POLLIN ; 
 int POLLOUT ; 
 unsigned char* FUNC0 (int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (struct pollfd*,int,int) ; 
 int FUNC4 (scalar_t__,char*,int) ; 
 int FUNC5 (scalar_t__,unsigned char*,unsigned int) ; 

__attribute__((used)) static int FUNC6(crawler_client_t *c) {
    unsigned char *data;
    unsigned int data_size = 0;
    struct pollfd to_poll[1];
    to_poll[0].fd = c->sfd;
    to_poll[0].events = POLLOUT;

    int ret = FUNC3(to_poll, 1, 1000);

    if (ret < 0) {
        // fatal.
        return -1;
    }

    if (ret == 0) return 0;

    if (to_poll[0].revents & POLLIN) {
        char buf[1];
        int res = ((conn*)c->c)->read(c->c, buf, 1);
        if (res == 0 || (res == -1 && (errno != EAGAIN && errno != EWOULDBLOCK))) {
            FUNC2(c);
            return -1;
        }
    }
    if ((data = FUNC0(c->buf, &data_size)) != NULL) {
        if (to_poll[0].revents & (POLLHUP|POLLERR)) {
            FUNC2(c);
            return -1;
        } else if (to_poll[0].revents & POLLOUT) {
            int total = ((conn*)c->c)->write(c->c, data, data_size);
            if (total == -1) {
                if (errno != EAGAIN && errno != EWOULDBLOCK) {
                    FUNC2(c);
                    return -1;
                }
            } else if (total == 0) {
                FUNC2(c);
                return -1;
            } else {
                FUNC1(c->buf, total);
            }
        }
    }
    return 0;
}