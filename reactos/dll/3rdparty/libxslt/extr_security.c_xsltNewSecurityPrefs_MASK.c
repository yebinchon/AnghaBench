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
typedef  int /*<<< orphan*/ * xsltSecurityPrefsPtr ;
typedef  int /*<<< orphan*/  xsltSecurityPrefs ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

xsltSecurityPrefsPtr
FUNC4(void) {
    xsltSecurityPrefsPtr ret;

    FUNC2();

    ret = (xsltSecurityPrefsPtr) FUNC1(sizeof(xsltSecurityPrefs));
    if (ret == NULL) {
	FUNC3(NULL, NULL, NULL,
		"xsltNewSecurityPrefs : malloc failed\n");
	return(NULL);
    }
    FUNC0(ret, 0, sizeof(xsltSecurityPrefs));
    return(ret);
}