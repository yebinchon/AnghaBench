
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int AF_SP ;
 scalar_t__ ENOPROTOOPT ;
 int NN_PUB ;
 int NN_SUB ;
 int NN_SUB_SUBSCRIBE ;
 int SOCKET_ADDRESS ;
 int errno_assert (int) ;
 int nn_assert (int) ;
 scalar_t__ nn_errno () ;
 int nn_getsockopt (int,int ,int ,char*,size_t*) ;
 int nn_setsockopt (int,int ,int ,char*,int ) ;
 int nn_sleep (int) ;
 int test_bind (int,int ) ;
 int test_close (int) ;
 int test_connect (int,int ) ;
 int test_recv (int,char*) ;
 int test_send (int,char*) ;
 int test_socket (int ,int ) ;

int main ()
{
    int rc;
    int pub1;
    int pub2;
    int sub1;
    int sub2;
    char buf [8];
    size_t sz;

    pub1 = test_socket (AF_SP, NN_PUB);
    test_bind (pub1, SOCKET_ADDRESS);
    sub1 = test_socket (AF_SP, NN_SUB);
    rc = nn_setsockopt (sub1, NN_SUB, NN_SUB_SUBSCRIBE, "", 0);
    errno_assert (rc == 0);
    sz = sizeof (buf);
    rc = nn_getsockopt (sub1, NN_SUB, NN_SUB_SUBSCRIBE, buf, &sz);
    nn_assert (rc == -1 && nn_errno () == ENOPROTOOPT);
    test_connect (sub1, SOCKET_ADDRESS);
    sub2 = test_socket (AF_SP, NN_SUB);
    rc = nn_setsockopt (sub2, NN_SUB, NN_SUB_SUBSCRIBE, "", 0);
    errno_assert (rc == 0);
    test_connect (sub2, SOCKET_ADDRESS);


    nn_sleep (10);

    test_send (pub1, "0123456789012345678901234567890123456789");
    test_recv (sub1, "0123456789012345678901234567890123456789");
    test_recv (sub2, "0123456789012345678901234567890123456789");

    test_close (pub1);
    test_close (sub1);
    test_close (sub2);



    sub1 = test_socket (AF_SP, NN_SUB);
    rc = nn_setsockopt (sub1, NN_SUB, NN_SUB_SUBSCRIBE, "", 0);
    errno_assert (rc == 0);
    test_bind (sub1, SOCKET_ADDRESS);
    pub1 = test_socket (AF_SP, NN_PUB);
    test_connect (pub1, SOCKET_ADDRESS);
    pub2 = test_socket (AF_SP, NN_PUB);
    test_connect (pub2, SOCKET_ADDRESS);
    nn_sleep (100);

    test_send (pub1, "0123456789012345678901234567890123456789");
    test_send (pub2, "0123456789012345678901234567890123456789");
    test_recv (sub1, "0123456789012345678901234567890123456789");
    test_recv (sub1, "0123456789012345678901234567890123456789");

    test_close (pub2);
    test_close (pub1);
    test_close (sub1);

    return 0;
}
