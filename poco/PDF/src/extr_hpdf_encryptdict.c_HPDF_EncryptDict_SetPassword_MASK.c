#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  user_passwd; int /*<<< orphan*/  owner_passwd; } ;
struct TYPE_4__ {int /*<<< orphan*/  error; int /*<<< orphan*/  attr; } ;
typedef  int /*<<< orphan*/  HPDF_STATUS ;
typedef  TYPE_1__* HPDF_EncryptDict ;
typedef  TYPE_2__* HPDF_Encrypt ;

/* Variables and functions */
 int /*<<< orphan*/  HPDF_ENCRYPT_INVALID_PASSWORD ; 
 int /*<<< orphan*/  HPDF_OK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 
 scalar_t__ FUNC4 (char const*,int) ; 

HPDF_STATUS
FUNC5  (HPDF_EncryptDict  dict,
                               const char   *owner_passwd,
                               const char   *user_passwd)
{
    HPDF_Encrypt attr = (HPDF_Encrypt)dict->attr;

    FUNC0((" HPDF_EncryptDict_SetPassword\n"));

    if (FUNC4(owner_passwd, 2) == 0)
        return FUNC2(dict->error, HPDF_ENCRYPT_INVALID_PASSWORD, 0);

    if (owner_passwd && user_passwd &&
            FUNC3 (owner_passwd, user_passwd) == 0)
        return FUNC2(dict->error, HPDF_ENCRYPT_INVALID_PASSWORD, 0);

    FUNC1 (owner_passwd, attr->owner_passwd);
    FUNC1 (user_passwd, attr->user_passwd);

    return HPDF_OK;
}