#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* d1; } ;
struct TYPE_5__ {size_t cookie_len; int /*<<< orphan*/  cookie; } ;
typedef  TYPE_2__ SSL ;
typedef  int /*<<< orphan*/  PACKET ;
typedef  int /*<<< orphan*/  MSG_PROCESS_RETURN ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_PROCESS_ERROR ; 
 int /*<<< orphan*/  MSG_PROCESS_FINISHED_READING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_AD_DECODE_ERROR ; 
 int /*<<< orphan*/  SSL_AD_ILLEGAL_PARAMETER ; 
 int /*<<< orphan*/  SSL_F_DTLS_PROCESS_HELLO_VERIFY ; 
 int /*<<< orphan*/  SSL_R_LENGTH_MISMATCH ; 
 int /*<<< orphan*/  SSL_R_LENGTH_TOO_LONG ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

MSG_PROCESS_RETURN FUNC5(SSL *s, PACKET *pkt)
{
    size_t cookie_len;
    PACKET cookiepkt;

    if (!FUNC1(pkt, 2)
        || !FUNC2(pkt, &cookiepkt)) {
        FUNC4(s, SSL_AD_DECODE_ERROR, SSL_F_DTLS_PROCESS_HELLO_VERIFY,
                 SSL_R_LENGTH_MISMATCH);
        return MSG_PROCESS_ERROR;
    }

    cookie_len = FUNC3(&cookiepkt);
    if (cookie_len > sizeof(s->d1->cookie)) {
        FUNC4(s, SSL_AD_ILLEGAL_PARAMETER, SSL_F_DTLS_PROCESS_HELLO_VERIFY,
                 SSL_R_LENGTH_TOO_LONG);
        return MSG_PROCESS_ERROR;
    }

    if (!FUNC0(&cookiepkt, s->d1->cookie, cookie_len)) {
        FUNC4(s, SSL_AD_DECODE_ERROR, SSL_F_DTLS_PROCESS_HELLO_VERIFY,
                 SSL_R_LENGTH_MISMATCH);
        return MSG_PROCESS_ERROR;
    }
    s->d1->cookie_len = cookie_len;

    return MSG_PROCESS_FINISHED_READING;
}