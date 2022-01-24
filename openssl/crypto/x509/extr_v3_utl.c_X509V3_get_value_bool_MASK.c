#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* value; } ;
typedef  TYPE_1__ CONF_VALUE ;

/* Variables and functions */
 int /*<<< orphan*/  X509V3_F_X509V3_GET_VALUE_BOOL ; 
 int /*<<< orphan*/  X509V3_R_INVALID_BOOLEAN_STRING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

int FUNC3(const CONF_VALUE *value, int *asn1_bool)
{
    const char *btmp;

    if ((btmp = value->value) == NULL)
        goto err;
    if (FUNC2(btmp, "TRUE") == 0
        || FUNC2(btmp, "true") == 0
        || FUNC2(btmp, "Y") == 0
        || FUNC2(btmp, "y") == 0
        || FUNC2(btmp, "YES") == 0
        || FUNC2(btmp, "yes") == 0) {
        *asn1_bool = 0xff;
        return 1;
    }
    if (FUNC2(btmp, "FALSE") == 0
        || FUNC2(btmp, "false") == 0
        || FUNC2(btmp, "N") == 0
        || FUNC2(btmp, "n") == 0
        || FUNC2(btmp, "NO") == 0
        || FUNC2(btmp, "no") == 0) {
        *asn1_bool = 0;
        return 1;
    }
 err:
    FUNC1(X509V3_F_X509V3_GET_VALUE_BOOL,
              X509V3_R_INVALID_BOOLEAN_STRING);
    FUNC0(value);
    return 0;
}