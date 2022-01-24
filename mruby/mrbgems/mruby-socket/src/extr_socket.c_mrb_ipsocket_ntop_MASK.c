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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  E_ARGUMENT_ERROR ; 
 int /*<<< orphan*/ * FUNC0 (int,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__*,char**,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static mrb_value
FUNC4(mrb_state *mrb, mrb_value klass)
{
  mrb_int af, n;
  char *addr, buf[50];

  FUNC1(mrb, "is", &af, &addr, &n);
  if ((af == AF_INET && n != 4) || (af == AF_INET6 && n != 16))
    FUNC2(mrb, E_ARGUMENT_ERROR, "invalid address");
  if (FUNC0((int)af, addr, buf, sizeof(buf)) == NULL)
    FUNC2(mrb, E_ARGUMENT_ERROR, "invalid address");
  return FUNC3(mrb, buf);
}