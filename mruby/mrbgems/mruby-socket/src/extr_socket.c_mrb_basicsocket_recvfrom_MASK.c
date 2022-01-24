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
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef  int ssize_t ;
typedef  int socklen_t ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int mrb_int ;
typedef  int /*<<< orphan*/  fsize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value
FUNC9(mrb_state *mrb, mrb_value self)
{
  ssize_t n;
  mrb_int maxlen, flags = 0;
  mrb_value ary, buf, sa;
  socklen_t socklen;

  FUNC3(mrb, "i|i", &maxlen, &flags);
  buf = FUNC4(mrb, maxlen);
  socklen = sizeof(struct sockaddr_storage);
  sa = FUNC4(mrb, socklen);
  n = FUNC7(FUNC8(mrb, self), FUNC0(buf), (fsize_t)maxlen, (int)flags, (struct sockaddr *)FUNC0(sa), &socklen);
  if (n == -1)
    FUNC6(mrb, "recvfrom");
  FUNC5(mrb, buf, (mrb_int)n);
  FUNC5(mrb, sa, (mrb_int)socklen);
  ary = FUNC1(mrb, 2);
  FUNC2(mrb, ary, buf);
  FUNC2(mrb, ary, sa);
  return ary;
}