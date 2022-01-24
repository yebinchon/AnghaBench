#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_4__* resp; int /*<<< orphan*/  ids; int /*<<< orphan*/  exts; } ;
struct TYPE_15__ {TYPE_4__* npn; TYPE_4__* tls13_cookie; TYPE_4__* alpn; TYPE_1__ ocsp; TYPE_4__* scts; TYPE_4__* peer_supportedgroups; TYPE_4__* supportedgroups; TYPE_4__* peer_ecpointformats; TYPE_4__* ecpointformats; TYPE_4__* hostname; } ;
struct TYPE_16__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  srtp_profiles; TYPE_3__ ext; int /*<<< orphan*/  waitctx; int /*<<< orphan*/  ctx; TYPE_2__* method; int /*<<< orphan*/  verified_chain; int /*<<< orphan*/  client_ca_names; int /*<<< orphan*/  ca_names; int /*<<< orphan*/  pha_dgst; struct TYPE_16__* pha_context; struct TYPE_16__* clienthello; int /*<<< orphan*/  scts; int /*<<< orphan*/  session_ctx; struct TYPE_16__* shared_sigalgs; int /*<<< orphan*/  cert; struct TYPE_16__* psksession_id; int /*<<< orphan*/ * psksession; int /*<<< orphan*/ * session; int /*<<< orphan*/  peer_ciphers; int /*<<< orphan*/  tls13_ciphersuites; int /*<<< orphan*/  cipher_list_by_id; int /*<<< orphan*/  cipher_list; int /*<<< orphan*/  init_buf; int /*<<< orphan*/ * rbio; int /*<<< orphan*/ * wbio; int /*<<< orphan*/  rlayer; int /*<<< orphan*/  ex_data; int /*<<< orphan*/  dane; int /*<<< orphan*/  param; int /*<<< orphan*/  references; } ;
struct TYPE_14__ {int /*<<< orphan*/  (* ssl_free ) (TYPE_4__*) ;} ;
typedef  TYPE_4__ SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CRYPTO_EX_INDEX_SSL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OCSP_RESPID_free ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (char*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  X509_EXTENSION_free ; 
 int /*<<< orphan*/  X509_NAME_free ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  X509_free ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_4__*) ; 

void FUNC27(SSL *s)
{
    int i;

    if (s == NULL)
        return;
    FUNC3(&s->references, &i, s->lock);
    FUNC10("SSL", s);
    if (i > 0)
        return;
    FUNC9(i < 0);

    FUNC14(s->param);
    FUNC16(&s->dane);
    FUNC5(CRYPTO_EX_INDEX_SSL, s, &s->ex_data);

    FUNC8(&s->rlayer);

    /* Ignore return value */
    FUNC25(s);

    FUNC1(s->wbio);
    s->wbio = NULL;
    FUNC1(s->rbio);
    s->rbio = NULL;

    FUNC2(s->init_buf);

    /* add extra stuff */
    FUNC19(s->cipher_list);
    FUNC19(s->cipher_list_by_id);
    FUNC19(s->tls13_ciphersuites);
    FUNC19(s->peer_ciphers);

    /* Make the next call work :-) */
    if (s->session != NULL) {
        FUNC24(s);
        FUNC13(s->session);
    }
    FUNC13(s->psksession);
    FUNC7(s->psksession_id);

    FUNC15(s);

    FUNC23(s->cert);
    FUNC7(s->shared_sigalgs);
    /* Free up if allocated */

    FUNC7(s->ext.hostname);
    FUNC12(s->session_ctx);
#ifndef OPENSSL_NO_EC
    FUNC7(s->ext.ecpointformats);
    FUNC7(s->ext.peer_ecpointformats);
#endif                          /* OPENSSL_NO_EC */
    FUNC7(s->ext.supportedgroups);
    FUNC7(s->ext.peer_supportedgroups);
    FUNC20(s->ext.ocsp.exts, X509_EXTENSION_free);
#ifndef OPENSSL_NO_OCSP
    FUNC17(s->ext.ocsp.ids, OCSP_RESPID_free);
#endif
#ifndef OPENSSL_NO_CT
    FUNC11(s->scts);
    FUNC7(s->ext.scts);
#endif
    FUNC7(s->ext.ocsp.resp);
    FUNC7(s->ext.alpn);
    FUNC7(s->ext.tls13_cookie);
    FUNC7(s->clienthello);
    FUNC7(s->pha_context);
    FUNC6(s->pha_dgst);

    FUNC21(s->ca_names, X509_NAME_free);
    FUNC21(s->client_ca_names, X509_NAME_free);

    FUNC22(s->verified_chain, X509_free);

    if (s->method != NULL)
        s->method->ssl_free(s);

    FUNC12(s->ctx);

    FUNC0(s->waitctx);

#if !defined(OPENSSL_NO_NEXTPROTONEG)
    FUNC7(s->ext.npn);
#endif

#ifndef OPENSSL_NO_SRTP
    FUNC18(s->srtp_profiles);
#endif

    FUNC4(s->lock);

    FUNC7(s);
}