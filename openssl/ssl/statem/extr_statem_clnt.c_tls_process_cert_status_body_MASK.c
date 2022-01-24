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
struct TYPE_6__ {size_t resp_len; int /*<<< orphan*/ * resp; } ;
struct TYPE_7__ {TYPE_1__ ocsp; } ;
struct TYPE_8__ {TYPE_2__ ext; } ;
typedef  TYPE_3__ SSL ;
typedef  int /*<<< orphan*/  PACKET ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/ * FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t*) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_AD_DECODE_ERROR ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_TLS_PROCESS_CERT_STATUS_BODY ; 
 int /*<<< orphan*/  SSL_R_LENGTH_MISMATCH ; 
 int /*<<< orphan*/  SSL_R_UNSUPPORTED_STATUS_TYPE ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int TLSEXT_STATUSTYPE_ocsp ; 

int FUNC6(SSL *s, PACKET *pkt)
{
    size_t resplen;
    unsigned int type;

    if (!FUNC2(pkt, &type)
        || type != TLSEXT_STATUSTYPE_ocsp) {
        FUNC5(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_CERT_STATUS_BODY,
                 SSL_R_UNSUPPORTED_STATUS_TYPE);
        return 0;
    }
    if (!FUNC3(pkt, &resplen)
        || FUNC4(pkt) != resplen) {
        FUNC5(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_CERT_STATUS_BODY,
                 SSL_R_LENGTH_MISMATCH);
        return 0;
    }
    s->ext.ocsp.resp = FUNC0(resplen);
    if (s->ext.ocsp.resp == NULL) {
        FUNC5(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_CERT_STATUS_BODY,
                 ERR_R_MALLOC_FAILURE);
        return 0;
    }
    if (!FUNC1(pkt, s->ext.ocsp.resp, resplen)) {
        FUNC5(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_CERT_STATUS_BODY,
                 SSL_R_LENGTH_MISMATCH);
        return 0;
    }
    s->ext.ocsp.resp_len = resplen;

    return 1;
}