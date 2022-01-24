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
typedef  int mrb_int ;

/* Variables and functions */
#define  EAGAIN 130 
#define  EINTR 129 
#define  EWOULDBLOCK 128 
 int /*<<< orphan*/  E_NOTIMP_ERROR ; 
 int LOCK_NB ; 
 int errno ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 

mrb_value
FUNC8(mrb_state *mrb, mrb_value self)
{
#if defined(sun)
  mrb_raise(mrb, E_NOTIMP_ERROR, "flock is not supported on Illumos/Solaris/Windows");
#else
  mrb_int operation;
  int fd;

  FUNC4(mrb, "i", &operation);
  fd = (int)FUNC2(FUNC5(mrb, self));

  while (FUNC0(fd, (int)operation) == -1) {
    switch (errno) {
      case EINTR:
        /* retry */
        break;
      case EAGAIN:      /* NetBSD */
#if defined(EWOULDBLOCK) && EWOULDBLOCK != EAGAIN
      case EWOULDBLOCK: /* FreeBSD OpenBSD Linux */
#endif
        if (operation & LOCK_NB) {
          return FUNC1();
        }
        /* FALLTHRU - should not happen */
      default:
        FUNC7(mrb, "flock failed");
        break;
    }
  }
#endif
  return FUNC3(0);
}