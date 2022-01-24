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
struct TYPE_3__ {int permission; scalar_t__ mode; int key_len; scalar_t__* encryption_key; scalar_t__* encrypt_id; scalar_t__* owner_key; scalar_t__* user_passwd; } ;
typedef  int HPDF_UINT ;
typedef  int /*<<< orphan*/  HPDF_MD5_CTX ;
typedef  TYPE_1__* HPDF_Encrypt ;
typedef  scalar_t__ HPDF_BYTE ;

/* Variables and functions */
 scalar_t__ HPDF_ENCRYPT_R3 ; 
 int HPDF_ID_LEN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__*,int) ; 
 int HPDF_PASSWD_LEN ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void
FUNC4  (HPDF_Encrypt  attr)
{
    HPDF_MD5_CTX md5_ctx;
    HPDF_BYTE tmp_flg[4];

    FUNC3((" HPDF_Encrypt_CreateEncryptionKey\n"));

    /* Algorithm3.2 step2 */
    FUNC1(&md5_ctx);
    FUNC2(&md5_ctx, attr->user_passwd, HPDF_PASSWD_LEN);

    /* Algorithm3.2 step3 */
    FUNC2(&md5_ctx, attr->owner_key, HPDF_PASSWD_LEN);


    /* Algorithm3.2 step4 */
    FUNC3(("@@@ permission =%d\n", attr->permission));
    tmp_flg[0] = (HPDF_BYTE)(attr->permission);
    tmp_flg[1] = (HPDF_BYTE)(attr->permission >> 8);
    tmp_flg[2] = (HPDF_BYTE)(attr->permission >> 16);
    tmp_flg[3] = (HPDF_BYTE)(attr->permission >> 24);

    FUNC2(&md5_ctx, tmp_flg, 4);

    /* Algorithm3.2 step5 */
    FUNC3(("@ Algorithm 3.2 step 5\n"));

    FUNC2(&md5_ctx, attr->encrypt_id, HPDF_ID_LEN);
    FUNC0(attr->encryption_key, &md5_ctx);

    /* Algorithm 3.2 step6 (Revision 3 only) */
    if (attr->mode == HPDF_ENCRYPT_R3) {
        HPDF_UINT i;

        for (i = 0; i < 50; i++) {
            FUNC3(("@ Algorithm 3.3 step 6 loop %u\n", i));
            FUNC1(&md5_ctx);
            FUNC2 (&md5_ctx, attr->encryption_key, attr->key_len);
            FUNC0(attr->encryption_key, &md5_ctx);
        }
    }
}