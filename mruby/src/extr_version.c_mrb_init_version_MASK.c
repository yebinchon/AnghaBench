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
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  MRUBY_COPYRIGHT ; 
 int /*<<< orphan*/  MRUBY_DESCRIPTION ; 
 int /*<<< orphan*/  MRUBY_RELEASE_DATE ; 
 int /*<<< orphan*/  MRUBY_RELEASE_NO ; 
 int /*<<< orphan*/  MRUBY_RUBY_ENGINE ; 
 int /*<<< orphan*/  MRUBY_RUBY_VERSION ; 
 int /*<<< orphan*/  MRUBY_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC3(mrb_state* mrb)
{
  mrb_value mruby_version = FUNC2(mrb, MRUBY_VERSION);

  FUNC0(mrb, "RUBY_VERSION", FUNC2(mrb, MRUBY_RUBY_VERSION));
  FUNC0(mrb, "RUBY_ENGINE", FUNC2(mrb, MRUBY_RUBY_ENGINE));
  FUNC0(mrb, "RUBY_ENGINE_VERSION", mruby_version);
  FUNC0(mrb, "MRUBY_VERSION", mruby_version);
  FUNC0(mrb, "MRUBY_RELEASE_NO", FUNC1(MRUBY_RELEASE_NO));
  FUNC0(mrb, "MRUBY_RELEASE_DATE", FUNC2(mrb, MRUBY_RELEASE_DATE));
  FUNC0(mrb, "MRUBY_DESCRIPTION", FUNC2(mrb, MRUBY_DESCRIPTION));
  FUNC0(mrb, "MRUBY_COPYRIGHT", FUNC2(mrb, MRUBY_COPYRIGHT));
}