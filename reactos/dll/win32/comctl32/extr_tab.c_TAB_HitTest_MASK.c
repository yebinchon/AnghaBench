#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  pt; } ;
typedef  int /*<<< orphan*/  TAB_INFO ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  TYPE_1__* LPTCHITTESTINFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/  const*,TYPE_1__*) ; 

__attribute__((used)) static inline LRESULT
FUNC2 (const TAB_INFO *infoPtr, LPTCHITTESTINFO lptest)
{
  FUNC1("(%p, %p)\n", infoPtr, lptest);
  return FUNC0 (infoPtr, lptest->pt, &lptest->flags);
}