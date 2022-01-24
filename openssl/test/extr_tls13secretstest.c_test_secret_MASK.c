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
typedef  int /*<<< orphan*/  hash ;
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int EVP_MAX_MD_SIZE ; 
 int IVLEN ; 
 int KEYLEN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int,size_t*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned char*,unsigned char const*,size_t,unsigned char*,size_t,unsigned char*,size_t,int) ; 

__attribute__((used)) static int FUNC7(SSL *s, unsigned char *prk,
                       const unsigned char *label, size_t labellen,
                       const unsigned char *ref_secret,
                       const unsigned char *ref_key, const unsigned char *ref_iv)
{
    size_t hashsize;
    unsigned char gensecret[EVP_MAX_MD_SIZE];
    unsigned char hash[EVP_MAX_MD_SIZE];
    unsigned char key[KEYLEN];
    unsigned char iv[IVLEN];
    const EVP_MD *md = FUNC3(s);

    if (!FUNC2(s, hash, sizeof(hash), &hashsize)) {
        FUNC0("Failed to get hash");
        return 0;
    }

    if (!FUNC6(s, md, prk, label, labellen, hash, hashsize,
                           gensecret, hashsize, 1)) {
        FUNC0("Secret generation failed");
        return 0;
    }

    if (!FUNC1(gensecret, hashsize, ref_secret, hashsize))
        return 0;

    if (!FUNC5(s, md, gensecret, key, KEYLEN)) {
        FUNC0("Key generation failed");
        return 0;
    }

    if (!FUNC1(key, KEYLEN, ref_key, KEYLEN))
        return 0;

    if (!FUNC4(s, md, gensecret, iv, IVLEN)) {
        FUNC0("IV generation failed");
        return 0;
    }

    if (!FUNC1(iv, IVLEN, ref_iv, IVLEN))
        return 0;

    return 1;
}