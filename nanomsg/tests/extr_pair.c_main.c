
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_SP ;
 int NN_PAIR ;
 int SOCKET_ADDRESS ;
 int test_bind (int,int ) ;
 int test_close (int) ;
 int test_connect (int,int ) ;
 int test_recv (int,char*) ;
 int test_send (int,char*) ;
 int test_socket (int ,int ) ;

int main ()
{
    int sb;
    int sc;

    sb = test_socket (AF_SP, NN_PAIR);
    test_bind (sb, SOCKET_ADDRESS);
    sc = test_socket (AF_SP, NN_PAIR);
    test_connect (sc, SOCKET_ADDRESS);

    test_send (sc, "ABC");
    test_recv (sb, "ABC");
    test_send (sb, "DEF");
    test_recv (sc, "DEF");

    test_close (sc);
    test_close (sb);

    return 0;
}
