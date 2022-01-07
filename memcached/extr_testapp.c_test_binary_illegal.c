
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int protocol_binary_response_no_extras ;
typedef int protocol_binary_request_no_extras ;
typedef enum test_return { ____Placeholder_test_return } test_return ;


 int PROTOCOL_BINARY_RESPONSE_UNKNOWN_COMMAND ;
 int TEST_PASS ;
 size_t raw_command (char*,int,int,int *,int ,int *,int ) ;
 int safe_recv_packet (char*,int) ;
 int safe_send (char*,size_t,int) ;
 int validate_response_header (int *,int,int ) ;

__attribute__((used)) static enum test_return test_binary_illegal(void) {
    uint8_t cmd = 0x25;
    while (cmd != 0x00) {
        union {
            protocol_binary_request_no_extras request;
            protocol_binary_response_no_extras response;
            char bytes[1024];
        } buffer;
        size_t len = raw_command(buffer.bytes, sizeof(buffer.bytes),
                                 cmd, ((void*)0), 0, ((void*)0), 0);
        safe_send(buffer.bytes, len, 0);
        safe_recv_packet(buffer.bytes, sizeof(buffer.bytes));
        validate_response_header(&buffer.response, cmd,
                                 PROTOCOL_BINARY_RESPONSE_UNKNOWN_COMMAND);
        ++cmd;
    }

    return TEST_PASS;
}
