
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum test_return { ____Placeholder_test_return } test_return ;
typedef int buffer ;


 int TEST_PASS ;
 int assert (int) ;
 int close_conn () ;
 int con ;
 int connect_server (char*,int ,int,int ) ;
 int enable_ssl ;
 int port ;
 int read_ascii_response (char*,int) ;
 int send_ascii_command (char*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int ) ;

__attribute__((used)) static enum test_return test_issue_92(void) {
    char buffer[1024];

    close_conn();
    con = connect_server("127.0.0.1", port, 0, enable_ssl);
    assert(con);

    send_ascii_command("stats cachedump 1 0 0\r\n");

    read_ascii_response(buffer, sizeof(buffer));
    assert(strncmp(buffer, "END", strlen("END")) == 0);

    send_ascii_command("stats cachedump 200 0 0\r\n");
    read_ascii_response(buffer, sizeof(buffer));
    assert(strncmp(buffer, "CLIENT_ERROR", strlen("CLIENT_ERROR")) == 0);

    close_conn();
    con = connect_server("127.0.0.1", port, 0, enable_ssl);
    assert(con);
    return TEST_PASS;
}
