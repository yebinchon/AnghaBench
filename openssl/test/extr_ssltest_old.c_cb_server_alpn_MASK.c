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

/* Variables and functions */
 scalar_t__ OPENSSL_NPN_NEGOTIATED ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 unsigned char* FUNC1 (unsigned char) ; 
 int SSL_TLSEXT_ERR_NOACK ; 
 int SSL_TLSEXT_ERR_OK ; 
 scalar_t__ FUNC2 (unsigned char**,unsigned char*,unsigned char*,size_t,unsigned char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 unsigned char* alpn_selected ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,unsigned char const*,unsigned char) ; 
 unsigned char* FUNC6 (size_t*,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC7(SSL *s, const unsigned char **out,
                          unsigned char *outlen, const unsigned char *in,
                          unsigned int inlen, void *arg)
{
    unsigned char *protos;
    size_t protos_len;
    char* alpn_str = arg;

    protos = FUNC6(&protos_len, alpn_str);
    if (protos == NULL) {
        FUNC4(stderr, "failed to parser ALPN server protocol string: %s\n",
                alpn_str);
        FUNC3();
    }

    if (FUNC2
        ((unsigned char **)out, outlen, protos, protos_len, in,
         inlen) != OPENSSL_NPN_NEGOTIATED) {
        FUNC0(protos);
        return SSL_TLSEXT_ERR_NOACK;
    }

    /*
     * Make a copy of the selected protocol which will be freed in
     * verify_alpn.
     */
    alpn_selected = FUNC1(*outlen);
    FUNC5(alpn_selected, *out, *outlen);
    *out = alpn_selected;

    FUNC0(protos);
    return SSL_TLSEXT_ERR_OK;
}