#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ASN1_STRING_TABLE ;

/* Variables and functions */
 int FUNC0 (int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int) ; 
 int /*<<< orphan*/  MBSTRING_ASC ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(void)
{
    const ASN1_STRING_TABLE *tmp = NULL;
    int nid = 12345678, nid2 = 87654321, rv = 0, ret = 0;

    tmp = FUNC2(nid);
    if (!FUNC5(tmp)) {
        FUNC3("asn1 string table: ASN1_STRING_TABLE_get non-exist nid");
        goto out;
    }

    ret = FUNC0(nid, -1, -1, MBSTRING_ASC, 0);
    if (!FUNC6(ret)) {
        FUNC3("asn1 string table: add NID(%d) failed", nid);
        goto out;
    }

    ret = FUNC0(nid2, -1, -1, MBSTRING_ASC, 0);
    if (!FUNC6(ret)) {
        FUNC3("asn1 string table: add NID(%d) failed", nid2);
        goto out;
    }

    tmp = FUNC2(nid);
    if (!FUNC4(tmp)) {
        FUNC3("asn1 string table: get NID(%d) failed", nid);
        goto out;
    }

    tmp = FUNC2(nid2);
    if (!FUNC4(tmp)) {
        FUNC3("asn1 string table: get NID(%d) failed", nid2);
        goto out;
    }

    FUNC1();

    /* check if all newly added NIDs are cleaned up */
    tmp = FUNC2(nid);
    if (!FUNC5(tmp)) {
        FUNC3("asn1 string table: get NID(%d) failed", nid);
        goto out;
    }

    tmp = FUNC2(nid2);
    if (!FUNC5(tmp)) {
        FUNC3("asn1 string table: get NID(%d) failed", nid2);
        goto out;
    }

    rv = 1;
 out:
    return rv;
}