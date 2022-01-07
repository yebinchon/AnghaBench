
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nn_usock {int s; } ;
typedef int socklen_t ;
typedef int opt ;


 int SOL_SOCKET ;
 int SO_ERROR ;
 int errno ;
 int errno_assert (int) ;
 int getsockopt (int ,int ,int ,int*,int*) ;
 int nn_assert (int) ;

__attribute__((used)) static int nn_usock_geterr (struct nn_usock *self)
{
    int rc;
    int opt;



    socklen_t optsz;


    opt = 0;
    optsz = sizeof (opt);
    rc = getsockopt (self->s, SOL_SOCKET, SO_ERROR, &opt, &optsz);


    if (rc == -1)
        return errno;
    errno_assert (rc == 0);
    nn_assert (optsz == sizeof (opt));
    return opt;
}
