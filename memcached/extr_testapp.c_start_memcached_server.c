
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum test_return { ____Placeholder_test_return } test_return ;


 int TEST_PASS ;
 int assert (int ) ;
 int close_conn () ;
 int con ;
 int connect_server (char*,int ,int,int ) ;
 int enable_ssl ;
 int port ;
 int server_pid ;
 int start_server (int *,int,int) ;

__attribute__((used)) static enum test_return start_memcached_server(void) {
    server_pid = start_server(&port, 0, 600);
    close_conn();
    con = connect_server("127.0.0.1", port, 0, enable_ssl);
    assert(con);
    return TEST_PASS;
}
