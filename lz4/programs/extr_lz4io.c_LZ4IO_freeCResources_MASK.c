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
struct TYPE_3__ {int /*<<< orphan*/  ctx; int /*<<< orphan*/ * cdict; int /*<<< orphan*/  dstBuffer; int /*<<< orphan*/  srcBuffer; } ;
typedef  TYPE_1__ cRess_t ;
typedef  int /*<<< orphan*/  LZ4F_errorCode_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(cRess_t ress)
{
    FUNC5(ress.srcBuffer);
    FUNC5(ress.dstBuffer);

    FUNC1(ress.cdict);
    ress.cdict = NULL;

    { LZ4F_errorCode_t const errorCode = FUNC2(ress.ctx);
      if (FUNC4(errorCode)) FUNC0(38, "Error : can't free LZ4F context resource : %s", FUNC3(errorCode)); }
}