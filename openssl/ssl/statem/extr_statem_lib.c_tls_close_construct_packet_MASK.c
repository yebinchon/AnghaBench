#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPACKET ;
struct TYPE_3__ {int init_num; scalar_t__ init_off; } ;
typedef  TYPE_1__ SSL ;

/* Variables and functions */
 size_t INT_MAX ; 
 int SSL3_MT_CHANGE_CIPHER_SPEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t*) ; 

int FUNC2(SSL *s, WPACKET *pkt, int htype)
{
    size_t msglen;

    if ((htype != SSL3_MT_CHANGE_CIPHER_SPEC && !FUNC0(pkt))
            || !FUNC1(pkt, &msglen)
            || msglen > INT_MAX)
        return 0;
    s->init_num = (int)msglen;
    s->init_off = 0;

    return 1;
}