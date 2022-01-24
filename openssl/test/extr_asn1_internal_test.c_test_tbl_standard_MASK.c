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
struct TYPE_4__ {int nid; } ;
typedef  TYPE_1__ ASN1_STRING_TABLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* tbl_standard ; 

__attribute__((used)) static int FUNC5(void)
{
    const ASN1_STRING_TABLE *tmp;
    int last_nid = -1;
    size_t i;

    for (tmp = tbl_standard, i = 0; i < FUNC1(tbl_standard); i++, tmp++) {
        if (tmp->nid < last_nid) {
            last_nid = 0;
            break;
        }
        last_nid = tmp->nid;
    }

    if (FUNC3(last_nid, 0)) {
        FUNC2("asn1 tbl_standard: Table order OK");
        return 1;
    }

    FUNC2("asn1 tbl_standard: out of order");
    for (tmp = tbl_standard, i = 0; i < FUNC1(tbl_standard); i++, tmp++)
        FUNC4("asn1 tbl_standard: Index %zu, NID %d, Name=%s",
                  i, tmp->nid, FUNC0(tmp->nid));

    return 0;
}