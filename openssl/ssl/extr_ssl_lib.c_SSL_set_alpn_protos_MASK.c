#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned int alpn_len; int /*<<< orphan*/ * alpn; } ;
struct TYPE_5__ {TYPE_1__ ext; } ;
typedef  TYPE_2__ SSL ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (unsigned char const*,unsigned int) ; 
 int /*<<< orphan*/  SSL_F_SSL_SET_ALPN_PROTOS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(SSL *ssl, const unsigned char *protos,
                        unsigned int protos_len)
{
    FUNC0(ssl->ext.alpn);
    ssl->ext.alpn = FUNC1(protos, protos_len);
    if (ssl->ext.alpn == NULL) {
        FUNC2(SSL_F_SSL_SET_ALPN_PROTOS, ERR_R_MALLOC_FAILURE);
        return 1;
    }
    ssl->ext.alpn_len = protos_len;

    return 0;
}