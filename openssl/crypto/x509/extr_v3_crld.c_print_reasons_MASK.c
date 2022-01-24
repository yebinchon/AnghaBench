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
struct TYPE_3__ {char* lname; int /*<<< orphan*/  bitnum; } ;
typedef  TYPE_1__ BIT_STRING_BITNAME ;
typedef  int /*<<< orphan*/  BIO ;
typedef  int /*<<< orphan*/  ASN1_BIT_STRING ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,char*,char const*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* reason_flags ; 

__attribute__((used)) static int FUNC3(BIO *out, const char *rname,
                         ASN1_BIT_STRING *rflags, int indent)
{
    int first = 1;
    const BIT_STRING_BITNAME *pbn;
    FUNC1(out, "%*s%s:\n%*s", indent, "", rname, indent + 2, "");
    for (pbn = reason_flags; pbn->lname; pbn++) {
        if (FUNC0(rflags, pbn->bitnum)) {
            if (first)
                first = 0;
            else
                FUNC2(out, ", ");
            FUNC2(out, pbn->lname);
        }
    }
    if (first)
        FUNC2(out, "<EMPTY>\n");
    else
        FUNC2(out, "\n");
    return 1;
}