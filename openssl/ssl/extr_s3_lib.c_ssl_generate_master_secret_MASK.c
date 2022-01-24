#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {size_t psklen; unsigned char* psk; int /*<<< orphan*/ * pms; TYPE_1__* new_cipher; } ;
struct TYPE_16__ {TYPE_5__ tmp; } ;
struct TYPE_17__ {scalar_t__ server; TYPE_6__ s3; TYPE_4__* session; TYPE_3__* method; } ;
struct TYPE_14__ {int /*<<< orphan*/  master_key_length; int /*<<< orphan*/  master_key; } ;
struct TYPE_13__ {TYPE_2__* ssl3_enc; } ;
struct TYPE_12__ {int /*<<< orphan*/  (* generate_master_secret ) (TYPE_7__*,int /*<<< orphan*/ ,unsigned char*,size_t,int /*<<< orphan*/ *) ;} ;
struct TYPE_11__ {unsigned long algorithm_mkey; } ;
typedef  TYPE_7__ SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,size_t) ; 
 unsigned char* FUNC2 (size_t) ; 
 unsigned long SSL_PSK ; 
 unsigned long SSL_kPSK ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (size_t,unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*,int /*<<< orphan*/ ,unsigned char*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_7__*,int /*<<< orphan*/ ,unsigned char*,size_t,int /*<<< orphan*/ *) ; 

int FUNC8(SSL *s, unsigned char *pms, size_t pmslen,
                               int free_pms)
{
    unsigned long alg_k = s->s3.tmp.new_cipher->algorithm_mkey;
    int ret = 0;

    if (alg_k & SSL_PSK) {
#ifndef OPENSSL_NO_PSK
        unsigned char *pskpms, *t;
        size_t psklen = s->s3.tmp.psklen;
        size_t pskpmslen;

        /* create PSK premaster_secret */

        /* For plain PSK "other_secret" is psklen zeroes */
        if (alg_k & SSL_kPSK)
            pmslen = psklen;

        pskpmslen = 4 + pmslen + psklen;
        pskpms = FUNC2(pskpmslen);
        if (pskpms == NULL)
            goto err;
        t = pskpms;
        FUNC5(pmslen, t);
        if (alg_k & SSL_kPSK)
            FUNC4(t, 0, pmslen);
        else
            FUNC3(t, pms, pmslen);
        t += pmslen;
        FUNC5(psklen, t);
        FUNC3(t, s->s3.tmp.psk, psklen);

        FUNC1(s->s3.tmp.psk, psklen);
        s->s3.tmp.psk = NULL;
        if (!s->method->ssl3_enc->generate_master_secret(s,
                    s->session->master_key,pskpms, pskpmslen,
                    &s->session->master_key_length)) {
            FUNC1(pskpms, pskpmslen);
            /* SSLfatal() already called */
            goto err;
        }
        FUNC1(pskpms, pskpmslen);
#else
        /* Should never happen */
        goto err;
#endif
    } else {
        if (!s->method->ssl3_enc->generate_master_secret(s,
                s->session->master_key, pms, pmslen,
                &s->session->master_key_length)) {
            /* SSLfatal() already called */
            goto err;
        }
    }

    ret = 1;
 err:
    if (pms) {
        if (free_pms)
            FUNC1(pms, pmslen);
        else
            FUNC0(pms, pmslen);
    }
    if (s->server == 0)
        s->s3.tmp.pms = NULL;
    return ret;
}