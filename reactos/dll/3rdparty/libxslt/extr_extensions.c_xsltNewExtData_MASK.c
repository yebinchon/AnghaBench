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
typedef  int /*<<< orphan*/ * xsltExtModulePtr ;
typedef  TYPE_1__* xsltExtDataPtr ;
typedef  int /*<<< orphan*/  xsltExtData ;
struct TYPE_3__ {void* extData; int /*<<< orphan*/ * extModule; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static xsltExtDataPtr
FUNC2(xsltExtModulePtr extModule, void *extData)
{
    xsltExtDataPtr cur;

    if (extModule == NULL)
        return (NULL);
    cur = (xsltExtDataPtr) FUNC0(sizeof(xsltExtData));
    if (cur == NULL) {
        FUNC1(NULL, NULL, NULL,
                           "xsltNewExtData : malloc failed\n");
        return (NULL);
    }
    cur->extModule = extModule;
    cur->extData = extData;
    return (cur);
}