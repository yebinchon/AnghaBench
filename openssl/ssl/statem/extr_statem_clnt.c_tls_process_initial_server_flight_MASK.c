#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ status_type; } ;
struct TYPE_13__ {int verify_mode; int /*<<< orphan*/ * ct_validation_callback; TYPE_3__* ctx; TYPE_1__ ext; } ;
struct TYPE_11__ {int (* status_cb ) (TYPE_4__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  status_arg; } ;
struct TYPE_12__ {TYPE_2__ ext; } ;
typedef  TYPE_4__ SSL ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  SSL_AD_BAD_CERTIFICATE_STATUS_RESPONSE ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_TLS_PROCESS_INITIAL_SERVER_FLIGHT ; 
 int /*<<< orphan*/  SSL_R_INVALID_STATUS_RESPONSE ; 
 int SSL_VERIFY_PEER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ TLSEXT_STATUSTYPE_nothing ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 

int FUNC4(SSL *s)
{
    /*
     * at this point we check that we have the required stuff from
     * the server
     */
    if (!FUNC1(s)) {
        /* SSLfatal() already called */
        return 0;
    }

    /*
     * Call the ocsp status callback if needed. The |ext.ocsp.resp| and
     * |ext.ocsp.resp_len| values will be set if we actually received a status
     * message, or NULL and -1 otherwise
     */
    if (s->ext.status_type != TLSEXT_STATUSTYPE_nothing
            && s->ctx->ext.status_cb != NULL) {
        int ret = s->ctx->ext.status_cb(s, s->ctx->ext.status_arg);

        if (ret == 0) {
            FUNC0(s, SSL_AD_BAD_CERTIFICATE_STATUS_RESPONSE,
                     SSL_F_TLS_PROCESS_INITIAL_SERVER_FLIGHT,
                     SSL_R_INVALID_STATUS_RESPONSE);
            return 0;
        }
        if (ret < 0) {
            FUNC0(s, SSL_AD_INTERNAL_ERROR,
                     SSL_F_TLS_PROCESS_INITIAL_SERVER_FLIGHT,
                     ERR_R_MALLOC_FAILURE);
            return 0;
        }
    }
#ifndef OPENSSL_NO_CT
    if (s->ct_validation_callback != NULL) {
        /* Note we validate the SCTs whether or not we abort on error */
        if (!FUNC2(s) && (s->verify_mode & SSL_VERIFY_PEER)) {
            /* SSLfatal() already called */
            return 0;
        }
    }
#endif

    return 1;
}