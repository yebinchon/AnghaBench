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
struct mrb_rational {int dummy; } ;
struct RIStruct {scalar_t__ inline_data; } ;
struct RClass {int dummy; } ;
struct RBasic {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  MRB_TT_ISTRUCT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct RClass*) ; 

__attribute__((used)) static struct RBasic*
FUNC1(mrb_state *mrb, struct RClass *c, struct mrb_rational **p)
{
  struct RIStruct *s;

  s = (struct RIStruct*)FUNC0(mrb, MRB_TT_ISTRUCT, c);
  *p = (struct mrb_rational*)s->inline_data;

  return (struct RBasic*)s;
}