
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LIST_HEAD (int ) ;
 int check_no_sockets (int *) ;
 int free_sock_stat (int *) ;
 int read_vsock_stat (int *) ;
 int sockets ;

__attribute__((used)) static void test_no_sockets(unsigned int peer_cid)
{
 LIST_HEAD(sockets);

 read_vsock_stat(&sockets);

 check_no_sockets(&sockets);

 free_sock_stat(&sockets);
}
