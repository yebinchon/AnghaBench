#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  PACKET ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_AD_DECODE_ERROR ; 
 int /*<<< orphan*/  SSL_F_SSL_NEXT_PROTO_VALIDATE ; 
 int /*<<< orphan*/  SSL_R_BAD_EXTENSION ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(SSL *s, PACKET *pkt)
{
    PACKET tmp_protocol;

    while (FUNC1(pkt)) {
        if (!FUNC0(pkt, &tmp_protocol)
            || FUNC1(&tmp_protocol) == 0) {
            FUNC2(s, SSL_AD_DECODE_ERROR, SSL_F_SSL_NEXT_PROTO_VALIDATE,
                     SSL_R_BAD_EXTENSION);
            return 0;
        }
    }

    return 1;
}