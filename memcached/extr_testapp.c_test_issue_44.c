
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef int in_port_t ;
typedef enum test_return { ____Placeholder_test_return } test_return ;


 int SIGHUP ;
 int SIGTERM ;
 int TEST_PASS ;
 int assert (int) ;
 scalar_t__ kill (int ,int ) ;
 int sleep (int) ;
 int start_server (int *,int,int) ;

__attribute__((used)) static enum test_return test_issue_44(void) {
    in_port_t port;
    pid_t pid = start_server(&port, 1, 15);
    assert(kill(pid, SIGHUP) == 0);
    sleep(1);
    assert(kill(pid, SIGTERM) == 0);

    return TEST_PASS;
}
