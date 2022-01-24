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
typedef  int /*<<< orphan*/  X509V3_EXT_METHOD ;
typedef  int /*<<< orphan*/  X509V3_CTX ;
struct TYPE_3__ {char* name; char* value; } ;
typedef  int /*<<< orphan*/  GENERAL_NAME ;
typedef  TYPE_1__ CONF_VALUE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char*) ; 
 int GEN_DIRNAME ; 
 int GEN_DNS ; 
 int GEN_EMAIL ; 
 int GEN_IPADD ; 
 int GEN_OTHERNAME ; 
 int GEN_RID ; 
 int GEN_URI ; 
 int /*<<< orphan*/  X509V3_F_V2I_GENERAL_NAME_EX ; 
 int /*<<< orphan*/  X509V3_R_MISSING_VALUE ; 
 int /*<<< orphan*/  X509V3_R_UNSUPPORTED_OPTION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

GENERAL_NAME *FUNC4(GENERAL_NAME *out,
                                  const X509V3_EXT_METHOD *method,
                                  X509V3_CTX *ctx, CONF_VALUE *cnf, int is_nc)
{
    int type;

    char *name, *value;

    name = cnf->name;
    value = cnf->value;

    if (!value) {
        FUNC1(X509V3_F_V2I_GENERAL_NAME_EX, X509V3_R_MISSING_VALUE);
        return NULL;
    }

    if (!FUNC3(name, "email"))
        type = GEN_EMAIL;
    else if (!FUNC3(name, "URI"))
        type = GEN_URI;
    else if (!FUNC3(name, "DNS"))
        type = GEN_DNS;
    else if (!FUNC3(name, "RID"))
        type = GEN_RID;
    else if (!FUNC3(name, "IP"))
        type = GEN_IPADD;
    else if (!FUNC3(name, "dirName"))
        type = GEN_DIRNAME;
    else if (!FUNC3(name, "otherName"))
        type = GEN_OTHERNAME;
    else {
        FUNC1(X509V3_F_V2I_GENERAL_NAME_EX, X509V3_R_UNSUPPORTED_OPTION);
        FUNC0(2, "name=", name);
        return NULL;
    }

    return FUNC2(out, method, ctx, type, value, is_nc);

}