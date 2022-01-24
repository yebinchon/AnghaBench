#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int msgused; int hdrsize; unsigned char* hdrbuf; int request_id; TYPE_2__* msglist; } ;
typedef  TYPE_3__ conn ;
typedef  void* caddr_t ;
struct TYPE_9__ {int /*<<< orphan*/  malloc_fails; } ;
struct TYPE_7__ {TYPE_1__* msg_iov; } ;
struct TYPE_6__ {int iov_len; void* iov_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int UDP_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void* FUNC3 (int) ; 
 void* FUNC4 (unsigned char*,int) ; 
 TYPE_4__ stats ; 

__attribute__((used)) static int FUNC5(conn *c) {
    int i;
    unsigned char *hdr;

    FUNC2(c != NULL);

    if (c->msgused > c->hdrsize) {
        void *new_hdrbuf;
        if (c->hdrbuf) {
            new_hdrbuf = FUNC4(c->hdrbuf, c->msgused * 2 * UDP_HEADER_SIZE);
        } else {
            new_hdrbuf = FUNC3(c->msgused * 2 * UDP_HEADER_SIZE);
        }

        if (! new_hdrbuf) {
            FUNC0();
            stats.malloc_fails++;
            FUNC1();
            return -1;
        }
        c->hdrbuf = (unsigned char *)new_hdrbuf;
        c->hdrsize = c->msgused * 2;
    }

    hdr = c->hdrbuf;
    for (i = 0; i < c->msgused; i++) {
        c->msglist[i].msg_iov[0].iov_base = (void*)hdr;
        c->msglist[i].msg_iov[0].iov_len = UDP_HEADER_SIZE;
        *hdr++ = c->request_id / 256;
        *hdr++ = c->request_id % 256;
        *hdr++ = i / 256;
        *hdr++ = i % 256;
        *hdr++ = c->msgused / 256;
        *hdr++ = c->msgused % 256;
        *hdr++ = 0;
        *hdr++ = 0;
        FUNC2((void *) hdr == (caddr_t)c->msglist[i].msg_iov[0].iov_base + UDP_HEADER_SIZE);
    }

    return 0;
}