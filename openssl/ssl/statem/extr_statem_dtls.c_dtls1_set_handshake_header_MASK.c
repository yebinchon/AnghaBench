#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPACKET ;
struct TYPE_7__ {TYPE_1__* d1; } ;
struct TYPE_6__ {int /*<<< orphan*/  handshake_write_seq; int /*<<< orphan*/  next_handshake_write_seq; } ;
typedef  TYPE_2__ SSL ;

/* Variables and functions */
 int /*<<< orphan*/  DTLS1_HM_HEADER_LENGTH ; 
 int /*<<< orphan*/  SSL3_MT_CCS ; 
 int SSL3_MT_CHANGE_CIPHER_SPEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(SSL *s, WPACKET *pkt, int htype)
{
    unsigned char *header;

    if (htype == SSL3_MT_CHANGE_CIPHER_SPEC) {
        s->d1->handshake_write_seq = s->d1->next_handshake_write_seq;
        FUNC4(s, SSL3_MT_CCS, 0,
                                     s->d1->handshake_write_seq, 0, 0);
        if (!FUNC1(pkt, SSL3_MT_CCS))
            return 0;
    } else {
        FUNC3(s, htype, 0, 0, 0);
        /*
         * We allocate space at the start for the message header. This gets
         * filled in later
         */
        if (!FUNC0(pkt, DTLS1_HM_HEADER_LENGTH, &header)
                || !FUNC2(pkt))
            return 0;
    }

    return 1;
}