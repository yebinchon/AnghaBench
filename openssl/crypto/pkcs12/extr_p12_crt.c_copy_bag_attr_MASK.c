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
typedef  int /*<<< orphan*/  X509_ATTRIBUTE ;
struct TYPE_3__ {int /*<<< orphan*/  attrib; } ;
typedef  TYPE_1__ PKCS12_SAFEBAG ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(PKCS12_SAFEBAG *bag, EVP_PKEY *pkey, int nid)
{
    int idx;
    X509_ATTRIBUTE *attr;
    idx = FUNC1(pkey, nid, -1);
    if (idx < 0)
        return 1;
    attr = FUNC0(pkey, idx);
    if (!FUNC2(&bag->attrib, attr))
        return 0;
    return 1;
}