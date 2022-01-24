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
struct _args {int /*<<< orphan*/  argv; int /*<<< orphan*/  srcpath; scalar_t__ rfp; } ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(mrb_state *mrb, struct _args *args)
{
  if (args->rfp)
    FUNC0(args->rfp);
  if (args->srcpath)
    FUNC2(mrb, args->srcpath);
  if (args->argv)
    FUNC2(mrb, args->argv);
  FUNC3(mrb);
  FUNC1(mrb);
}