#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  peer_sigalgslen; int /*<<< orphan*/  peer_sigalgs; int /*<<< orphan*/  peer_cert_sigalgslen; int /*<<< orphan*/  peer_cert_sigalgs; } ;
struct TYPE_6__ {TYPE_2__ tmp; } ;
struct TYPE_8__ {TYPE_1__ s3; int /*<<< orphan*/ * cert; } ;
typedef  TYPE_3__ SSL ;
typedef  int /*<<< orphan*/  PACKET ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC2(SSL *s, PACKET *pkt, int cert)
{
    /* Extension ignored for inappropriate versions */
    if (!FUNC0(s))
        return 1;
    /* Should never happen */
    if (s->cert == NULL)
        return 0;

    if (cert)
        return FUNC1(pkt, &s->s3.tmp.peer_cert_sigalgs,
                             &s->s3.tmp.peer_cert_sigalgslen);
    else
        return FUNC1(pkt, &s->s3.tmp.peer_sigalgs,
                             &s->s3.tmp.peer_sigalgslen);

}