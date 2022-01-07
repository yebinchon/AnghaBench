
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_SP ;
 int NN_REQ ;
 int errno_assert (int) ;
 int get_test_port (int,char const**) ;
 int nn_shutdown (int,int) ;
 int test_addr_from (char*,char*,char*,int ) ;
 int test_close (int) ;
 int test_connect (int,char*) ;
 int test_socket (int ,int ) ;

int main (int argc, const char *argv[])
{
    int s;
    int rc;
    int eid;
    char socket_address[128];

    test_addr_from(socket_address, "tcp", "127.0.0.1",
            get_test_port(argc, argv));


    s = test_socket (AF_SP, NN_REQ);
    eid = test_connect (s, socket_address);
    rc = nn_shutdown (s, eid);
    errno_assert (rc == 0);
    test_close (s);

    return 0;
}
