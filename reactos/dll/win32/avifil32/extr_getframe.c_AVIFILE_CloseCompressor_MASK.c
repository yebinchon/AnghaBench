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
struct TYPE_3__ {int /*<<< orphan*/ * hic; scalar_t__ bResize; int /*<<< orphan*/ * lpInFormat; int /*<<< orphan*/ * lpOutFormat; } ;
typedef  TYPE_1__ IGetFrameImpl ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(IGetFrameImpl *This)
{
  if (This->lpInFormat != This->lpOutFormat) {
    FUNC1(FUNC0(), 0, This->lpOutFormat);
    This->lpOutFormat = NULL;
  }
  FUNC1(FUNC0(), 0, This->lpInFormat);
  This->lpInFormat = NULL;
  if (This->hic != NULL) {
    if (This->bResize)
      FUNC4(This->hic);
    else
      FUNC3(This->hic);
    FUNC2(This->hic);
    This->hic = NULL;
  }
}