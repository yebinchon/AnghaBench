
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int op ;


 int AF_SP ;
 int NN_DOMAIN ;
 int NN_PAIR ;
 int NN_PROTOCOL ;
 int NN_SOL_SOCKET ;
 int errno_assert (int) ;
 int nn_assert (int) ;
 int nn_getsockopt (int,int ,int ,int*,size_t*) ;
 int test_close (int) ;
 int test_socket (int,int) ;

int main ()
{
    int rc;
    int s;
    int op;
    size_t opsz;

    s = test_socket (AF_SP, NN_PAIR);

    opsz = sizeof (op);
    rc = nn_getsockopt (s, NN_SOL_SOCKET, NN_DOMAIN, &op, &opsz);
    errno_assert (rc == 0);
    nn_assert (opsz == sizeof (op));
    nn_assert (op == AF_SP);

    opsz = sizeof (op);
    rc = nn_getsockopt (s, NN_SOL_SOCKET, NN_PROTOCOL, &op, &opsz);
    errno_assert (rc == 0);
    nn_assert (opsz == sizeof (op));
    nn_assert (op == NN_PAIR);

    test_close (s);

    return 0;
}
