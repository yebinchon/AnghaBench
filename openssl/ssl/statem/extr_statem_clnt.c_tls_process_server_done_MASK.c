#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* new_cipher; } ;
struct TYPE_11__ {TYPE_2__ tmp; } ;
struct TYPE_12__ {TYPE_3__ s3; } ;
struct TYPE_9__ {int algorithm_mkey; } ;
typedef  TYPE_4__ SSL ;
typedef  int /*<<< orphan*/  PACKET ;
typedef  int /*<<< orphan*/  MSG_PROCESS_RETURN ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_PROCESS_ERROR ; 
 int /*<<< orphan*/  MSG_PROCESS_FINISHED_READING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  SSL_AD_DECODE_ERROR ; 
 int /*<<< orphan*/  SSL_AD_INTERNAL_ERROR ; 
 int /*<<< orphan*/  SSL_F_TLS_PROCESS_SERVER_DONE ; 
 int /*<<< orphan*/  SSL_R_LENGTH_MISMATCH ; 
 int /*<<< orphan*/  SSL_R_SRP_A_CALC ; 
 int SSL_kSRP ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 

MSG_PROCESS_RETURN FUNC4(SSL *s, PACKET *pkt)
{
    if (FUNC0(pkt) > 0) {
        /* should contain no data */
        FUNC2(s, SSL_AD_DECODE_ERROR, SSL_F_TLS_PROCESS_SERVER_DONE,
                 SSL_R_LENGTH_MISMATCH);
        return MSG_PROCESS_ERROR;
    }
#ifndef OPENSSL_NO_SRP
    if (s->s3.tmp.new_cipher->algorithm_mkey & SSL_kSRP) {
        if (FUNC1(s) <= 0) {
            FUNC2(s, SSL_AD_INTERNAL_ERROR, SSL_F_TLS_PROCESS_SERVER_DONE,
                     SSL_R_SRP_A_CALC);
            return MSG_PROCESS_ERROR;
        }
    }
#endif

    if (!FUNC3(s)) {
        /* SSLfatal() already called */
        return MSG_PROCESS_ERROR;
    }

    return MSG_PROCESS_FINISHED_READING;
}