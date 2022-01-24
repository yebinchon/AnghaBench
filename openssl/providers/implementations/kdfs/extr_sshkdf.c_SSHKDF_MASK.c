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
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,...) ; 
 int EVP_MAX_MD_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,unsigned char*,unsigned int) ; 

__attribute__((used)) static int FUNC7(const EVP_MD *evp_md,
                  const unsigned char *key, size_t key_len,
                  const unsigned char *xcghash, size_t xcghash_len,
                  const unsigned char *session_id, size_t session_id_len,
                  char type, unsigned char *okey, size_t okey_len)
{
    EVP_MD_CTX *md = NULL;
    unsigned char digest[EVP_MAX_MD_SIZE];
    unsigned int dsize = 0;
    size_t cursize = 0;
    int ret = 0;

    md = FUNC4();
    if (md == NULL)
        return 0;

    if (!FUNC1(md, evp_md, NULL))
        goto out;

    if (!FUNC2(md, key, key_len))
        goto out;

    if (!FUNC2(md, xcghash, xcghash_len))
        goto out;

    if (!FUNC2(md, &type, 1))
        goto out;

    if (!FUNC2(md, session_id, session_id_len))
        goto out;

    if (!FUNC0(md, digest, &dsize))
        goto out;

    if (okey_len < dsize) {
        FUNC6(okey, digest, okey_len);
        ret = 1;
        goto out;
    }

    FUNC6(okey, digest, dsize);

    for (cursize = dsize; cursize < okey_len; cursize += dsize) {

        if (!FUNC1(md, evp_md, NULL))
            goto out;

        if (!FUNC2(md, key, key_len))
            goto out;

        if (!FUNC2(md, xcghash, xcghash_len))
            goto out;

        if (!FUNC2(md, okey, cursize))
            goto out;

        if (!FUNC0(md, digest, &dsize))
            goto out;

        if (okey_len < cursize + dsize) {
            FUNC6(okey + cursize, digest, okey_len - cursize);
            ret = 1;
            goto out;
        }

        FUNC6(okey + cursize, digest, dsize);
    }

    ret = 1;

out:
    FUNC3(md);
    FUNC5(digest, EVP_MAX_MD_SIZE);
    return ret;
}