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

/* Variables and functions */
 int /*<<< orphan*/  BIO_F_BIO_SOCKET_NBIO ; 
 int FUNC0 (int,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_LIB_SYS ; 
 int /*<<< orphan*/  ERR_R_PASSED_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FIONBIO ; 
 int FNDELAY ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int O_NONBLOCK ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

int FUNC5(int s, int mode)
{
    int ret = -1;
    int l;

    l = mode;
# ifdef FIONBIO
    l = mode;

    ret = BIO_socket_ioctl(s, FIONBIO, &l);
# elif defined(F_GETFL) && defined(F_SETFL) && (defined(O_NONBLOCK) || defined(FNDELAY))
    /* make sure this call always pushes an error level; BIO_socket_ioctl() does so, so we do too. */

    l = fcntl(s, F_GETFL, 0);
    if (l == -1) {
        ERR_raise_data(ERR_LIB_SYS, get_last_sys_error(),
                       "calling fcntl()");
        ret = -1;
    } else {
#  if defined(O_NONBLOCK)
        l &= ~O_NONBLOCK;
#  else
        l &= ~FNDELAY; /* BSD4.x */
#  endif
        if (mode) {
#  if defined(O_NONBLOCK)
            l |= O_NONBLOCK;
#  else
            l |= FNDELAY; /* BSD4.x */
#  endif
        }
        ret = fcntl(s, F_SETFL, l);

        if (ret < 0) {
            ERR_raise_data(ERR_LIB_SYS, get_last_sys_error(),
                           "calling fcntl()");
        }
    }
# else
    /* make sure this call always pushes an error level; BIO_socket_ioctl() does so, so we do too. */
    FUNC1(BIO_F_BIO_SOCKET_NBIO, ERR_R_PASSED_INVALID_ARGUMENT);
# endif

    return (ret == 0);
}