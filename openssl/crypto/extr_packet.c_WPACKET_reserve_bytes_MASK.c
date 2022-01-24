#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t maxsize; size_t written; TYPE_4__* buf; int /*<<< orphan*/ * subs; } ;
typedef  TYPE_1__ WPACKET ;
struct TYPE_6__ {size_t length; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_4__*,size_t) ; 
 size_t DEFAULT_BUF_SIZE ; 
 int SIZE_MAX ; 
 unsigned char* FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

int FUNC3(WPACKET *pkt, size_t len, unsigned char **allocbytes)
{
    /* Internal API, so should not fail */
    if (!FUNC2(pkt->subs != NULL && len != 0))
        return 0;

    if (pkt->maxsize - pkt->written < len)
        return 0;

    if (pkt->buf != NULL && (pkt->buf->length - pkt->written < len)) {
        size_t newlen;
        size_t reflen;

        reflen = (len > pkt->buf->length) ? len : pkt->buf->length;

        if (reflen > SIZE_MAX / 2) {
            newlen = SIZE_MAX;
        } else {
            newlen = reflen * 2;
            if (newlen < DEFAULT_BUF_SIZE)
                newlen = DEFAULT_BUF_SIZE;
        }
        if (FUNC0(pkt->buf, newlen) == 0)
            return 0;
    }
    if (allocbytes != NULL)
        *allocbytes = FUNC1(pkt);

    return 1;
}