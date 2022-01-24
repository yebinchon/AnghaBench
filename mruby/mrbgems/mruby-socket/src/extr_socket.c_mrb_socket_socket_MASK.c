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
typedef  scalar_t__ mrb_int ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int,int,int) ; 

__attribute__((used)) static mrb_value
FUNC4(mrb_state *mrb, mrb_value klass)
{
  mrb_int domain, type, protocol;
  int s;

  FUNC1(mrb, "iii", &domain, &type, &protocol);
  s = (int)FUNC3((int)domain, (int)type, (int)protocol);
  if (s == -1)
    FUNC2(mrb, "socket");
  return FUNC0(s);
}