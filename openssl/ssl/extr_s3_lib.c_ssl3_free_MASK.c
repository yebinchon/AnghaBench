#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  peer_cert_sigalgs; int /*<<< orphan*/  peer_sigalgs; int /*<<< orphan*/  pmslen; int /*<<< orphan*/  pms; int /*<<< orphan*/  ciphers_raw; int /*<<< orphan*/  peer_ca_names; int /*<<< orphan*/  ctype; int /*<<< orphan*/ * pkey; } ;
struct TYPE_10__ {int /*<<< orphan*/  alpn_proposed; int /*<<< orphan*/  alpn_selected; TYPE_1__ tmp; int /*<<< orphan*/ * peer_tmp; } ;
struct TYPE_9__ {TYPE_6__ s3; } ;
typedef  TYPE_2__ SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  X509_NAME_free ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

void FUNC8(SSL *s)
{
    if (s == NULL)
        return;

    FUNC6(s);

#if !defined(OPENSSL_NO_EC) || !defined(OPENSSL_NO_DH)
    FUNC0(s->s3.peer_tmp);
    s->s3.peer_tmp = NULL;
    FUNC0(s->s3.tmp.pkey);
    s->s3.tmp.pkey = NULL;
#endif

    FUNC2(s->s3.tmp.ctype);
    FUNC5(s->s3.tmp.peer_ca_names, X509_NAME_free);
    FUNC2(s->s3.tmp.ciphers_raw);
    FUNC1(s->s3.tmp.pms, s->s3.tmp.pmslen);
    FUNC2(s->s3.tmp.peer_sigalgs);
    FUNC2(s->s3.tmp.peer_cert_sigalgs);
    FUNC7(s);
    FUNC2(s->s3.alpn_selected);
    FUNC2(s->s3.alpn_proposed);

#ifndef OPENSSL_NO_SRP
    FUNC3(s);
#endif
    FUNC4(&s->s3, 0, sizeof(s->s3));
}