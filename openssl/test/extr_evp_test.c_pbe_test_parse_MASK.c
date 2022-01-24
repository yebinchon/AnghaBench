#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* data; } ;
struct TYPE_7__ {scalar_t__ pbe_type; int /*<<< orphan*/  key_len; int /*<<< orphan*/  key; int /*<<< orphan*/  salt_len; int /*<<< orphan*/  salt; int /*<<< orphan*/  pass_len; int /*<<< orphan*/  pass; } ;
typedef  TYPE_1__ PBE_DATA ;
typedef  TYPE_2__ EVP_TEST ;

/* Variables and functions */
 scalar_t__ PBE_TYPE_PBKDF2 ; 
 scalar_t__ PBE_TYPE_PKCS12 ; 
 scalar_t__ PBE_TYPE_SCRYPT ; 
 int FUNC0 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_2__*,char const*,char const*) ; 
 int FUNC2 (TYPE_2__*,char const*,char const*) ; 
 int FUNC3 (TYPE_2__*,char const*,char const*) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

__attribute__((used)) static int FUNC5(EVP_TEST *t,
                          const char *keyword, const char *value)
{
    PBE_DATA *pdata = t->data;

    if (FUNC4(keyword, "Password") == 0)
        return FUNC0(value, &pdata->pass, &pdata->pass_len);
    if (FUNC4(keyword, "Salt") == 0)
        return FUNC0(value, &pdata->salt, &pdata->salt_len);
    if (FUNC4(keyword, "Key") == 0)
        return FUNC0(value, &pdata->key, &pdata->key_len);
    if (pdata->pbe_type == PBE_TYPE_PBKDF2)
        return FUNC1(t, keyword, value);
    else if (pdata->pbe_type == PBE_TYPE_PKCS12)
        return FUNC2(t, keyword, value);
#ifndef OPENSSL_NO_SCRYPT
    else if (pdata->pbe_type == PBE_TYPE_SCRYPT)
        return FUNC3(t, keyword, value);
#endif
    return 0;
}