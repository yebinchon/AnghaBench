#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * xsltStepOpPtr ;
typedef  int /*<<< orphan*/  xsltStepOp ;
typedef  TYPE_1__* xsltCompMatchPtr ;
typedef  int /*<<< orphan*/  xsltCompMatch ;
struct TYPE_5__ {int maxStep; scalar_t__ direct; int /*<<< orphan*/ * nsList; scalar_t__ nsNr; int /*<<< orphan*/ * steps; scalar_t__ nbStep; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static xsltCompMatchPtr
FUNC4(void) {
    xsltCompMatchPtr cur;

    cur = (xsltCompMatchPtr) FUNC2(sizeof(xsltCompMatch));
    if (cur == NULL) {
	FUNC3(NULL, NULL, NULL,
		"xsltNewCompMatch : out of memory error\n");
	return(NULL);
    }
    FUNC0(cur, 0, sizeof(xsltCompMatch));
    cur->maxStep = 10;
    cur->nbStep = 0;
    cur-> steps = (xsltStepOpPtr) FUNC2(sizeof(xsltStepOp) *
                                            cur->maxStep);
    if (cur->steps == NULL) {
	FUNC3(NULL, NULL, NULL,
		"xsltNewCompMatch : out of memory error\n");
	FUNC1(cur);
	return(NULL);
    }
    cur->nsNr = 0;
    cur->nsList = NULL;
    cur->direct = 0;
    return(cur);
}