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
typedef  int /*<<< orphan*/  mrb_sym ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  size_t mrb_int ;

/* Variables and functions */
 int ONSTACK_ALLOC_MAX ; 
 size_t ONSTACK_STRLEN_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t*) ; 

__attribute__((used)) static mrb_sym
FUNC5(mrb_state *mrb, mrb_sym id)
{
#define ONSTACK_ALLOC_MAX 32
#define ONSTACK_STRLEN_MAX (ONSTACK_ALLOC_MAX - 1) /* '=' character */

  const char *name;
  char *buf;
  mrb_int len;
  mrb_sym mid;
  char onstack[ONSTACK_ALLOC_MAX];

  name = FUNC4(mrb, id, &len);
  if (len > ONSTACK_STRLEN_MAX) {
    buf = (char *)FUNC3(mrb, (size_t)len+1);
  }
  else {
    buf = onstack;
  }
  FUNC0(buf, name, (size_t)len);
  buf[len] = '=';

  mid = FUNC2(mrb, buf, len+1);
  if (buf != onstack) {
    FUNC1(mrb, buf);
  }
  return mid;
}