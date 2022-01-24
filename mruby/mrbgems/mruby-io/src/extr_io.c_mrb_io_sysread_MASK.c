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
struct mrb_io {int /*<<< orphan*/  fd; int /*<<< orphan*/  readable; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  scalar_t__ mrb_int ;
typedef  int /*<<< orphan*/  fsize_t ;

/* Variables and functions */
 int /*<<< orphan*/  E_ARGUMENT_ERROR ; 
 int /*<<< orphan*/  E_EOF_ERROR ; 
 int /*<<< orphan*/  E_IO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

mrb_value
FUNC14(mrb_state *mrb, mrb_value io)
{
  struct mrb_io *fptr;
  mrb_value buf = FUNC6();
  mrb_int maxlen;
  int ret;

  FUNC4(mrb, "i|S", &maxlen, &buf);
  if (maxlen < 0) {
    FUNC7(mrb, E_ARGUMENT_ERROR, "negative expanding string size");
  }
  else if (maxlen == 0) {
    return FUNC9(mrb, NULL, maxlen);
  }

  if (FUNC5(buf)) {
    buf = FUNC9(mrb, NULL, maxlen);
  }

  if (FUNC1(buf) != maxlen) {
    buf = FUNC11(mrb, buf, maxlen);
  } else {
    FUNC8(mrb, FUNC0(buf));
  }

  fptr = (struct mrb_io *)FUNC3(mrb, io);
  if (!fptr->readable) {
    FUNC7(mrb, E_IO_ERROR, "not opened for reading");
  }
  ret = FUNC13(fptr->fd, FUNC2(buf), (fsize_t)maxlen);
  switch (ret) {
    case 0: /* EOF */
      if (maxlen == 0) {
        buf = FUNC10(mrb, "");
      } else {
        FUNC7(mrb, E_EOF_ERROR, "sysread failed: End of File");
      }
      break;
    case -1: /* Error */
      FUNC12(mrb, "sysread failed");
      break;
    default:
      if (FUNC1(buf) != ret) {
        buf = FUNC11(mrb, buf, ret);
      }
      break;
  }

  return buf;
}