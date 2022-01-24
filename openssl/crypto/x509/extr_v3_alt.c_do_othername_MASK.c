#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509V3_CTX ;
struct TYPE_7__ {int /*<<< orphan*/  type_id; int /*<<< orphan*/ * value; } ;
struct TYPE_5__ {TYPE_4__* otherName; } ;
struct TYPE_6__ {TYPE_1__ d; } ;
typedef  TYPE_2__ GENERAL_NAME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char const*,int) ; 
 TYPE_4__* FUNC5 () ; 
 char* FUNC6 (char const*,char) ; 

__attribute__((used)) static int FUNC7(GENERAL_NAME *gen, const char *value, X509V3_CTX *ctx)
{
    char *objtmp = NULL, *p;
    int objlen;

    if ((p = FUNC6(value, ';')) == NULL)
        return 0;
    if ((gen->d.otherName = FUNC5()) == NULL)
        return 0;
    /*
     * Free this up because we will overwrite it. no need to free type_id
     * because it is static
     */
    FUNC0(gen->d.otherName->value);
    if ((gen->d.otherName->value = FUNC1(p + 1, ctx)) == NULL)
        return 0;
    objlen = p - value;
    objtmp = FUNC4(value, objlen);
    if (objtmp == NULL)
        return 0;
    gen->d.otherName->type_id = FUNC2(objtmp, 0);
    FUNC3(objtmp);
    if (!gen->d.otherName->type_id)
        return 0;
    return 1;
}