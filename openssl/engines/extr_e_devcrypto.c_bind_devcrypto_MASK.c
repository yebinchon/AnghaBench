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
typedef  int /*<<< orphan*/  ENGINE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  devcrypto_ciphers ; 
 int /*<<< orphan*/  devcrypto_cmds ; 
 int /*<<< orphan*/  devcrypto_ctrl ; 
 int /*<<< orphan*/  devcrypto_dh ; 
 int /*<<< orphan*/  devcrypto_digests ; 
 int /*<<< orphan*/  devcrypto_dsa ; 
 int /*<<< orphan*/  devcrypto_ec ; 
 int /*<<< orphan*/  devcrypto_rsa ; 
 int /*<<< orphan*/  devcrypto_unload ; 
 int /*<<< orphan*/  engine_devcrypto_id ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static int FUNC13(ENGINE *e) {

    if (!FUNC9(e, engine_devcrypto_id)
        || !FUNC10(e, "/dev/crypto engine")
        || !FUNC7(e, devcrypto_unload)
        || !FUNC5(e, devcrypto_cmds)
        || !FUNC6(e, devcrypto_ctrl))
        return 0;

    FUNC11();
#ifdef IMPLEMENT_DIGEST
    prepare_digest_methods();
#endif

    return (FUNC4(e, devcrypto_ciphers)
#ifdef IMPLEMENT_DIGEST
        && ENGINE_set_digests(e, devcrypto_digests)
#endif
/*
 * Asymmetric ciphers aren't well supported with /dev/crypto.  Among the BSD
 * implementations, it seems to only exist in FreeBSD, and regarding the
 * parameters in its crypt_kop, the manual crypto(4) has this to say:
 *
 *    The semantics of these arguments are currently undocumented.
 *
 * Reading through the FreeBSD source code doesn't give much more than
 * their CRK_MOD_EXP implementation for ubsec.
 *
 * It doesn't look much better with cryptodev-linux.  They have the crypt_kop
 * structure as well as the command (CRK_*) in cryptodev.h, but no support
 * seems to be implemented at all for the moment.
 *
 * At the time of writing, it seems impossible to write proper support for
 * FreeBSD's asym features without some very deep knowledge and access to
 * specific kernel modules.
 *
 * /Richard Levitte, 2017-05-11
 */
#if 0
# ifndef OPENSSL_NO_RSA
        && ENGINE_set_RSA(e, devcrypto_rsa)
# endif
# ifndef OPENSSL_NO_DSA
        && ENGINE_set_DSA(e, devcrypto_dsa)
# endif
# ifndef OPENSSL_NO_DH
        && ENGINE_set_DH(e, devcrypto_dh)
# endif
# ifndef OPENSSL_NO_EC
        && ENGINE_set_EC(e, devcrypto_ec)
# endif
#endif
        );
}