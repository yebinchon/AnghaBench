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
typedef  int /*<<< orphan*/ * xsltTransformCachePtr ;
typedef  int /*<<< orphan*/  xsltTransformCache ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static xsltTransformCachePtr
FUNC3(void)
{
    xsltTransformCachePtr ret;

    ret = (xsltTransformCachePtr) FUNC1(sizeof(xsltTransformCache));
    if (ret == NULL) {
	FUNC2(NULL, NULL, NULL,
	    "xsltTransformCacheCreate : malloc failed\n");
	return(NULL);
    }
    FUNC0(ret, 0, sizeof(xsltTransformCache));
    return(ret);
}