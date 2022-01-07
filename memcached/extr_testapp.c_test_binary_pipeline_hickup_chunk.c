
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef int uint8_t ;
typedef int uint64_t ;
typedef int protocol_binary_request_no_extras ;
typedef int off_t ;
typedef enum test_return { ____Placeholder_test_return } test_return ;
 int TEST_PASS ;
 size_t arithmetic_command (char*,int,int,char**,size_t,int,int ,int ) ;
 scalar_t__ hickup_thread_running ;
 int memcpy (char*,char*,size_t) ;
 int rand () ;
 size_t raw_command (char*,int,int const,char**,size_t,int*,int) ;
 int safe_send (void*,int,int) ;
 size_t storage_command (char*,int,int,char**,size_t,int*,int,int ,int ) ;
 size_t touch_command (char*,int,int,char**,size_t,int) ;

__attribute__((used)) static enum test_return test_binary_pipeline_hickup_chunk(void *buffer, size_t buffersize) {
    off_t offset = 0;
    char *key[256];
    uint64_t value = 0xfeedfacedeadbeef;

    while (hickup_thread_running &&
           offset + sizeof(protocol_binary_request_no_extras) < buffersize) {
        union {
            protocol_binary_request_no_extras request;
            char bytes[65 * 1024];
        } command;
        uint8_t cmd = (uint8_t)(rand() & 0xff);
        size_t len;
        size_t keylen = (rand() % 250) + 1;

        switch (cmd) {
        case 162:
        case 161:
        case 137:
        case 136:
        case 132:
        case 131:
            len = storage_command(command.bytes, sizeof(command.bytes), cmd,
                                  key, keylen , &value, sizeof(value),
                                  0, 0);
            break;
        case 160:
        case 159:
        case 141:
        case 140:
            len = raw_command(command.bytes, sizeof(command.bytes), cmd,
                              key, keylen, &value, sizeof(value));
            break;
        case 154:
        case 153:
            len = raw_command(command.bytes, sizeof(command.bytes), cmd,
                              ((void*)0), 0, ((void*)0), 0);
            break;
        case 142:
            len = raw_command(command.bytes, sizeof(command.bytes), cmd,
                              ((void*)0), 0, ((void*)0), 0);
            break;
        case 156:
        case 155:
            len = raw_command(command.bytes, sizeof(command.bytes), cmd,
                             key, keylen, ((void*)0), 0);
            break;
        case 158:
        case 157:
        case 144:
        case 143:
            len = arithmetic_command(command.bytes, sizeof(command.bytes), cmd,
                                     key, keylen, 1, 0, 0);
            break;
        case 128:
            len = raw_command(command.bytes, sizeof(command.bytes),
                             128,
                             ((void*)0), 0, ((void*)0), 0);
            break;
        case 148:
        case 147:
        case 146:
        case 145:
            len = raw_command(command.bytes, sizeof(command.bytes), cmd,
                             key, keylen, ((void*)0), 0);
            break;

        case 129:
        case 152:
        case 149:
        case 151:
        case 150:
            len = touch_command(command.bytes, sizeof(command.bytes), cmd,
                                key, keylen, 10);
            break;

        case 130:
            len = raw_command(command.bytes, sizeof(command.bytes),
                              130,
                              ((void*)0), 0, ((void*)0), 0);
            break;

        case 134:
        case 135:
        case 133:

        case 138:
        case 139:

            cmd |= 0xf0;

        default:
            len = raw_command(command.bytes, sizeof(command.bytes),
                              cmd, ((void*)0), 0, ((void*)0), 0);
        }

        if ((len + offset) < buffersize) {
            memcpy(((char*)buffer) + offset, command.bytes, len);
            offset += len;
        } else {
            break;
        }
    }
    safe_send(buffer, offset, 1);

    return TEST_PASS;
}
