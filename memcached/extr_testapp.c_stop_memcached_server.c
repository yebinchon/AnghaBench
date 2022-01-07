
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum test_return { ____Placeholder_test_return } test_return ;


 int SIGTERM ;
 int TEST_PASS ;
 int assert (int) ;
 int close_conn () ;
 scalar_t__ kill (int,int ) ;
 int server_pid ;

__attribute__((used)) static enum test_return stop_memcached_server(void) {
    close_conn();
    if (server_pid != -1) {
        assert(kill(server_pid, SIGTERM) == 0);
    }

    return TEST_PASS;
}
