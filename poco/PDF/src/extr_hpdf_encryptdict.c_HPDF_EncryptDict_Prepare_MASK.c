#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ mode; int key_len; int permission; int /*<<< orphan*/  user_key; int /*<<< orphan*/  owner_key; } ;
struct TYPE_11__ {int /*<<< orphan*/  error; int /*<<< orphan*/  mmgr; int /*<<< orphan*/  attr; } ;
typedef  int /*<<< orphan*/  HPDF_Xref ;
typedef  scalar_t__ HPDF_STATUS ;
typedef  TYPE_1__* HPDF_EncryptDict ;
typedef  TYPE_2__* HPDF_Encrypt ;
typedef  int /*<<< orphan*/  HPDF_Dict ;
typedef  int /*<<< orphan*/  HPDF_Binary ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_1__*,char*,char*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,char*,int) ; 
 scalar_t__ HPDF_ENCRYPT_R2 ; 
 scalar_t__ HPDF_ENCRYPT_R3 ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ HPDF_OK ; 
 int /*<<< orphan*/  HPDF_PASSWD_LEN ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

HPDF_STATUS
FUNC10  (HPDF_EncryptDict  dict,
                           HPDF_Dict         info,
                           HPDF_Xref         xref)
{
    HPDF_STATUS ret;
    HPDF_Encrypt attr = (HPDF_Encrypt)dict->attr;
    HPDF_Binary user_key;
    HPDF_Binary owner_key;

    FUNC9((" HPDF_EncryptDict_Prepare\n"));

    FUNC4 (dict, info, xref);
    FUNC6 (attr);
    FUNC5 (attr);
    FUNC7 (attr);

    owner_key = FUNC0 (dict->mmgr, attr->owner_key, HPDF_PASSWD_LEN);
    if (!owner_key)
        return FUNC8 (dict->error);

    if ((ret = FUNC1 (dict, "O", owner_key)) != HPDF_OK)
        return ret;

    user_key = FUNC0 (dict->mmgr, attr->user_key, HPDF_PASSWD_LEN);
    if (!user_key)
        return FUNC8 (dict->error);

    if ((ret = FUNC1 (dict, "U", user_key)) != HPDF_OK)
        return ret;

    ret += FUNC2 (dict, "Filter", "Standard");

    if (attr->mode == HPDF_ENCRYPT_R2) {
        ret += FUNC3 (dict, "V", 1);
        ret += FUNC3 (dict, "R", 2);
    } else if (attr->mode == HPDF_ENCRYPT_R3) {
        ret += FUNC3 (dict, "V", 2);
        ret += FUNC3 (dict, "R", 3);
        ret += FUNC3 (dict, "Length", attr->key_len * 8);
    }

    ret += FUNC3 (dict, "P", attr->permission);

    if (ret != HPDF_OK)
        return FUNC8 (dict->error);

    return HPDF_OK;
}