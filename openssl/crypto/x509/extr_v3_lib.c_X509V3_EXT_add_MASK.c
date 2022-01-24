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
typedef  int /*<<< orphan*/  X509V3_EXT_METHOD ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  X509V3_F_X509V3_EXT_ADD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ext_cmp ; 
 int /*<<< orphan*/ * ext_list ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC3(X509V3_EXT_METHOD *ext)
{
    if (ext_list == NULL
        && (ext_list = FUNC1(ext_cmp)) == NULL) {
        FUNC0(X509V3_F_X509V3_EXT_ADD, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    if (!FUNC2(ext_list, ext)) {
        FUNC0(X509V3_F_X509V3_EXT_ADD, ERR_R_MALLOC_FAILURE);
        return 0;
    }
    return 1;
}