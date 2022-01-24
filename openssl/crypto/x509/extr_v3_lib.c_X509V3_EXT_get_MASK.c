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
 int NID_undef ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

const X509V3_EXT_METHOD *FUNC3(X509_EXTENSION *ext)
{
    int nid;
    if ((nid = FUNC0(FUNC2(ext))) == NID_undef)
        return NULL;
    return FUNC1(nid);
}