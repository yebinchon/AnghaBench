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
typedef  int /*<<< orphan*/  MD5_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MD5_CBLOCK ; 
 int /*<<< orphan*/  MD5_DIGEST_LENGTH ; 
 int /*<<< orphan*/  NID_md5 ; 
 int /*<<< orphan*/  NID_md5WithRSAEncryption ; 
 int /*<<< orphan*/  const* _hidden_md5_md ; 
 int /*<<< orphan*/  digest_md5_final ; 
 int /*<<< orphan*/  digest_md5_init ; 
 int /*<<< orphan*/  digest_md5_update ; 

__attribute__((used)) static const EVP_MD *FUNC9(void)
{
    if (_hidden_md5_md == NULL) {
        EVP_MD *md;

        if ((md = FUNC1(NID_md5, NID_md5WithRSAEncryption)) == NULL
            || !FUNC7(md, MD5_DIGEST_LENGTH)
            || !FUNC6(md, MD5_CBLOCK)
            || !FUNC2(md,
                                             sizeof(EVP_MD *) + sizeof(MD5_CTX))
            || !FUNC4(md, 0)
            || !FUNC5(md, digest_md5_init)
            || !FUNC8(md, digest_md5_update)
            || !FUNC3(md, digest_md5_final)) {
            FUNC0(md);
            md = NULL;
        }
        _hidden_md5_md = md;
    }
    return _hidden_md5_md;
}