
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_SP ;
 scalar_t__ EMFILE ;
 int MAX_SOCKETS ;
 int NN_PAIR ;
 int errno_assert (int) ;
 int nn_close (int) ;
 scalar_t__ nn_errno () ;
 int nn_socket (int ,int ) ;

int main ()
{
    int rc;
    int i;
    int socks [MAX_SOCKETS];


    for (i = 0; i != MAX_SOCKETS; ++i) {
        socks [i] = nn_socket (AF_SP, NN_PAIR);
        if (socks [i] < 0) {
            errno_assert (nn_errno () == EMFILE);
            break;
        }
    }
    while (1) {
        --i;
        if (i == -1)
            break;
        rc = nn_close (socks [i]);
        errno_assert (rc == 0);
    }

    return 0;
}
