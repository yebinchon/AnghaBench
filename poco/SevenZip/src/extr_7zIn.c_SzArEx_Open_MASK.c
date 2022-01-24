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
typedef  scalar_t__ SRes ;
typedef  int /*<<< orphan*/  ISzAlloc ;
typedef  int /*<<< orphan*/  ILookInStream ;
typedef  int /*<<< orphan*/  CSzArEx ;

/* Variables and functions */
 scalar_t__ SZ_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

SRes FUNC2(CSzArEx *p, ILookInStream *inStream, ISzAlloc *allocMain, ISzAlloc *allocTemp)
{
  SRes res = FUNC1(p, inStream, allocMain, allocTemp);
  if (res != SZ_OK)
    FUNC0(p, allocMain);
  return res;
}