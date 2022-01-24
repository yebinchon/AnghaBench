#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int* owner_passwd; scalar_t__ mode; int key_len; int* user_passwd; int* owner_key; } ;
typedef  int HPDF_UINT ;
typedef  int /*<<< orphan*/  HPDF_MD5_CTX ;
typedef  TYPE_1__* HPDF_Encrypt ;
typedef  int HPDF_BYTE ;
typedef  int /*<<< orphan*/  HPDF_ARC4_Ctx_Rec ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*,int) ; 
 scalar_t__ HPDF_ENCRYPT_R3 ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int*,int) ; 
 int HPDF_MD5_KEY_LEN ; 
 int /*<<< orphan*/  FUNC5 (int*,int*,int) ; 
 int HPDF_PASSWD_LEN ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

void
FUNC7  (HPDF_Encrypt  attr)
{
    HPDF_ARC4_Ctx_Rec rc4_ctx;
    HPDF_MD5_CTX md5_ctx;
    HPDF_BYTE digest[HPDF_MD5_KEY_LEN];
    HPDF_BYTE tmppwd[HPDF_PASSWD_LEN];

    FUNC6((" HPDF_Encrypt_CreateOwnerKey\n"));

    /* create md5-digest using the value of owner_passwd */

    /* Algorithm 3.3 step 2 */
    FUNC3(&md5_ctx);
    FUNC4(&md5_ctx, attr->owner_passwd, HPDF_PASSWD_LEN);

    FUNC6(("@ Algorithm 3.3 step 2\n"));

    FUNC2(digest, &md5_ctx);

    /* Algorithm 3.3 step 3 (Revision 3 only) */
    if (attr->mode == HPDF_ENCRYPT_R3) {
        HPDF_UINT i;

        for (i = 0; i < 50; i++) {
            FUNC3(&md5_ctx);

            /* HPDF_MD5Update (&md5_ctx, digest, HPDF_MD5_KEY_LEN); */
            FUNC4 (&md5_ctx, digest, attr->key_len);
            FUNC2(digest, &md5_ctx);

            FUNC6(("@ Algorithm 3.3 step 3 loop %u\n", i));
        }
    }

    /* Algorithm 3.3 step 4 */
    FUNC6(("@ Algorithm 3.3 step 7 loop 0\n"));

    FUNC1 (&rc4_ctx, digest, attr->key_len);

    FUNC6(("@ Algorithm 3.3 step 5\n"));

    /* Algorithm 3.3 step 6 */
    FUNC6(("@ Algorithm 3.3 step 6\n"));
    FUNC0 (&rc4_ctx, attr->user_passwd, tmppwd, HPDF_PASSWD_LEN);

    /* Algorithm 3.3 step 7 */
    FUNC6(("@ Algorithm 3.3 step 7\n"));
    if (attr->mode == HPDF_ENCRYPT_R3) {
        HPDF_BYTE tmppwd2[HPDF_PASSWD_LEN];
        HPDF_UINT i;

        for (i = 1; i <= 19; i++) {
            HPDF_UINT j;
            HPDF_BYTE new_key[HPDF_MD5_KEY_LEN];

            for (j = 0; j < attr->key_len; j++)
                new_key[j] = (HPDF_BYTE)(digest[j] ^ i);

            FUNC6(("@ Algorithm 3.3 step 7 loop %u\n", i));

            FUNC5 (tmppwd2, tmppwd, HPDF_PASSWD_LEN);
            FUNC1(&rc4_ctx, new_key, attr->key_len);
            FUNC0(&rc4_ctx, tmppwd2, tmppwd, HPDF_PASSWD_LEN);
        }
    }

    /* Algorithm 3.3 step 8 */
    FUNC6(("@ Algorithm 3.3 step 8\n"));
    FUNC5 (attr->owner_key, tmppwd, HPDF_PASSWD_LEN);
}