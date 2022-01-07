
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ECONNRESET ;
 scalar_t__ EINPROGRESS ;
 scalar_t__ EINTR ;
 scalar_t__ ETIMEDOUT ;
 scalar_t__ EWOULDBLOCK ;
 int close (int) ;
 scalar_t__ errno ;
 int errno_assert (int) ;
 scalar_t__ nn_fast (int) ;
 scalar_t__ nn_slow (int) ;

void nn_closefd (int fd)
{
    int rc;
    if (nn_slow (fd < 0)) {
        return;
    }
    rc = close (fd);
    if (nn_fast (rc == 0))
        return;
    errno_assert (errno == EINTR || errno == ETIMEDOUT ||
        errno == EWOULDBLOCK || errno == EINPROGRESS || errno == ECONNRESET);
}
