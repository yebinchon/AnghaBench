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
typedef  int /*<<< orphan*/  SHA256_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  EVP_MD_FLAG_DIGALGID_ABSENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NID_sha256 ; 
 int /*<<< orphan*/  NID_sha256WithRSAEncryption ; 
 int /*<<< orphan*/  SHA256_CBLOCK ; 
 int /*<<< orphan*/  SHA256_DIGEST_LENGTH ; 
 int /*<<< orphan*/  const* _hidden_sha256_md ; 
 int /*<<< orphan*/  digest_sha256_final ; 
 int /*<<< orphan*/  digest_sha256_init ; 
 int /*<<< orphan*/  digest_sha256_update ; 

__attribute__((used)) static const EVP_MD *FUNC9(void)
{
    if (_hidden_sha256_md == NULL) {
        EVP_MD *md;

        if ((md = FUNC1(NID_sha256, NID_sha256WithRSAEncryption)) == NULL
            || !FUNC7(md, SHA256_DIGEST_LENGTH)
            || !FUNC6(md, SHA256_CBLOCK)
            || !FUNC2(md,
                                             sizeof(EVP_MD *) + sizeof(SHA256_CTX))
            || !FUNC4(md, EVP_MD_FLAG_DIGALGID_ABSENT)
            || !FUNC5(md, digest_sha256_init)
            || !FUNC8(md, digest_sha256_update)
            || !FUNC3(md, digest_sha256_final)) {
            FUNC0(md);
            md = NULL;
        }
        _hidden_sha256_md = md;
    }
    return _hidden_sha256_md;
}