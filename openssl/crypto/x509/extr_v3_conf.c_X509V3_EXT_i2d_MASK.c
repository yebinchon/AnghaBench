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
typedef  int /*<<< orphan*/  X509_EXTENSION ;
typedef  int /*<<< orphan*/  X509V3_EXT_METHOD ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/  X509V3_F_X509V3_EXT_I2D ; 
 int /*<<< orphan*/  X509V3_R_UNKNOWN_EXTENSION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,int,int,void*) ; 

X509_EXTENSION *FUNC3(int ext_nid, int crit, void *ext_struc)
{
    const X509V3_EXT_METHOD *method;

    if ((method = FUNC0(ext_nid)) == NULL) {
        FUNC1(X509V3_F_X509V3_EXT_I2D, X509V3_R_UNKNOWN_EXTENSION);
        return NULL;
    }
    return FUNC2(method, ext_nid, crit, ext_struc);
}