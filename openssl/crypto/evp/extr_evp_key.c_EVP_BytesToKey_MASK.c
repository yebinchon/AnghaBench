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
typedef  int /*<<< orphan*/  md_buf ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char const*,unsigned int) ; 
 int EVP_MAX_IV_LENGTH ; 
 int EVP_MAX_KEY_LENGTH ; 
 int EVP_MAX_MD_SIZE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,int) ; 
 unsigned int PKCS5_SALT_LEN ; 

int FUNC9(const EVP_CIPHER *type, const EVP_MD *md,
                   const unsigned char *salt, const unsigned char *data,
                   int datal, int count, unsigned char *key,
                   unsigned char *iv)
{
    EVP_MD_CTX *c;
    unsigned char md_buf[EVP_MAX_MD_SIZE];
    int niv, nkey, addmd = 0;
    unsigned int mds = 0, i;
    int rv = 0;
    nkey = FUNC1(type);
    niv = FUNC0(type);
    FUNC7(nkey <= EVP_MAX_KEY_LENGTH);
    FUNC7(niv <= EVP_MAX_IV_LENGTH);

    if (data == NULL)
        return nkey;

    c = FUNC6();
    if (c == NULL)
        goto err;
    for (;;) {
        if (!FUNC3(c, md, NULL))
            goto err;
        if (addmd++)
            if (!FUNC4(c, &(md_buf[0]), mds))
                goto err;
        if (!FUNC4(c, data, datal))
            goto err;
        if (salt != NULL)
            if (!FUNC4(c, salt, PKCS5_SALT_LEN))
                goto err;
        if (!FUNC2(c, &(md_buf[0]), &mds))
            goto err;

        for (i = 1; i < (unsigned int)count; i++) {
            if (!FUNC3(c, md, NULL))
                goto err;
            if (!FUNC4(c, &(md_buf[0]), mds))
                goto err;
            if (!FUNC2(c, &(md_buf[0]), &mds))
                goto err;
        }
        i = 0;
        if (nkey) {
            for (;;) {
                if (nkey == 0)
                    break;
                if (i == mds)
                    break;
                if (key != NULL)
                    *(key++) = md_buf[i];
                nkey--;
                i++;
            }
        }
        if (niv && (i != mds)) {
            for (;;) {
                if (niv == 0)
                    break;
                if (i == mds)
                    break;
                if (iv != NULL)
                    *(iv++) = md_buf[i];
                niv--;
                i++;
            }
        }
        if ((nkey == 0) && (niv == 0))
            break;
    }
    rv = FUNC1(type);
 err:
    FUNC5(c);
    FUNC8(md_buf, sizeof(md_buf));
    return rv;
}