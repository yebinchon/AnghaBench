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
struct TYPE_3__ {int /*<<< orphan*/  dictBuffer; int /*<<< orphan*/  dstBuffer; int /*<<< orphan*/  srcBuffer; int /*<<< orphan*/  dCtx; } ;
typedef  TYPE_1__ dRess_t ;
typedef  int /*<<< orphan*/  LZ4F_errorCode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(dRess_t ress)
{
    LZ4F_errorCode_t errorCode = FUNC1(ress.dCtx);
    if (FUNC3(errorCode)) FUNC0(69, "Error : can't free LZ4F context resource : %s", FUNC2(errorCode));
    FUNC4(ress.srcBuffer);
    FUNC4(ress.dstBuffer);
    FUNC4(ress.dictBuffer);
}