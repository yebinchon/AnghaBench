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
typedef  int /*<<< orphan*/  buf ;
struct TYPE_4__ {int /*<<< orphan*/  length; int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  BIO ;
typedef  TYPE_1__ ASN1_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  ASN1_F_I2A_ASN1_OBJECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int) ; 
 int FUNC5 (char*,int,TYPE_1__ const*) ; 

int FUNC6(BIO *bp, const ASN1_OBJECT *a)
{
    char buf[80], *p = buf;
    int i;

    if ((a == NULL) || (a->data == NULL))
        return FUNC2(bp, "NULL", 4);
    i = FUNC5(buf, sizeof(buf), a);
    if (i > (int)(sizeof(buf) - 1)) {
        if ((p = FUNC4(i + 1)) == NULL) {
            FUNC0(ASN1_F_I2A_ASN1_OBJECT, ERR_R_MALLOC_FAILURE);
            return -1;
        }
        FUNC5(p, i + 1, a);
    }
    if (i <= 0) {
        i = FUNC2(bp, "<INVALID>", 9);
        i += FUNC1(bp, (const char *)a->data, a->length);
        return i;
    }
    FUNC2(bp, p, i);
    if (p != buf)
        FUNC3(p);
    return i;
}