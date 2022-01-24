#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int nid; } ;
typedef  TYPE_1__ ASN1_STRING_TABLE ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPENSSL_INIT_LOAD_CONFIG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (scalar_t__,TYPE_1__*) ; 
 TYPE_1__* FUNC4 (scalar_t__,int) ; 
 scalar_t__ stable ; 
 int /*<<< orphan*/  tbl_standard ; 

ASN1_STRING_TABLE *FUNC5(int nid)
{
    int idx;
    ASN1_STRING_TABLE fnd;

    /* "stable" can be impacted by config, so load the config file first */
    FUNC1(OPENSSL_INIT_LOAD_CONFIG, NULL);

    fnd.nid = nid;
    if (stable) {
        idx = FUNC3(stable, &fnd);
        if (idx >= 0)
            return FUNC4(stable, idx);
    }
    return FUNC0(&fnd, tbl_standard, FUNC2(tbl_standard));
}