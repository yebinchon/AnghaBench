#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  secure; TYPE_2__* alpn; TYPE_2__* supportedgroups; TYPE_2__* ecpointformats; } ;
struct TYPE_10__ {int /*<<< orphan*/  lock; TYPE_1__ ext; int /*<<< orphan*/  client_cert_engine; int /*<<< orphan*/  srtp_profiles; int /*<<< orphan*/ * comp_methods; int /*<<< orphan*/  extra_certs; int /*<<< orphan*/  client_ca_names; int /*<<< orphan*/  ca_names; int /*<<< orphan*/  cert; int /*<<< orphan*/  tls13_ciphersuites; int /*<<< orphan*/  cipher_list_by_id; int /*<<< orphan*/  cipher_list; int /*<<< orphan*/  ctlog_store; int /*<<< orphan*/  cert_store; int /*<<< orphan*/ * sessions; int /*<<< orphan*/  ex_data; int /*<<< orphan*/  dane; int /*<<< orphan*/  param; int /*<<< orphan*/  references; } ;
typedef  TYPE_2__ SSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CRYPTO_EX_INDEX_SSL_CTX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  X509_NAME_free ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  X509_free ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 

void FUNC20(SSL_CTX *a)
{
    int i;

    if (a == NULL)
        return;

    FUNC0(&a->references, &i, a->lock);
    FUNC8("SSL_CTX", a);
    if (i > 0)
        return;
    FUNC7(i < 0);

    FUNC12(a->param);
    FUNC13(&a->dane);

    /*
     * Free internal session cache. However: the remove_cb() may reference
     * the ex_data of SSL_CTX, thus the ex_data store can only be removed
     * after the sessions were flushed.
     * As the ex_data handling routines might also touch the session cache,
     * the most secure solution seems to be: empty (flush) the cache, then
     * free ex_data, then finally free the cache.
     * (See ticket [openssl.org #212].)
     */
    if (a->sessions != NULL)
        FUNC10(a, 0);

    FUNC2(CRYPTO_EX_INDEX_SSL_CTX, a, &a->ex_data);
    FUNC14(a->sessions);
    FUNC11(a->cert_store);
#ifndef OPENSSL_NO_CT
    FUNC3(a->ctlog_store);
#endif
    FUNC16(a->cipher_list);
    FUNC16(a->cipher_list_by_id);
    FUNC16(a->tls13_ciphersuites);
    FUNC19(a->cert);
    FUNC17(a->ca_names, X509_NAME_free);
    FUNC17(a->client_ca_names, X509_NAME_free);
    FUNC18(a->extra_certs, X509_free);
    a->comp_methods = NULL;
#ifndef OPENSSL_NO_SRTP
    FUNC15(a->srtp_profiles);
#endif
#ifndef OPENSSL_NO_SRP
    FUNC9(a);
#endif
#ifndef OPENSSL_NO_ENGINE
    FUNC4(a->client_cert_engine);
#endif

#ifndef OPENSSL_NO_EC
    FUNC5(a->ext.ecpointformats);
#endif
    FUNC5(a->ext.supportedgroups);
    FUNC5(a->ext.alpn);
    FUNC6(a->ext.secure);

    FUNC1(a->lock);

    FUNC5(a);
}