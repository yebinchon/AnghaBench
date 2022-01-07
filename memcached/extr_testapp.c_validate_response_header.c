
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_6__ {scalar_t__ magic; int opcode; scalar_t__ datatype; scalar_t__ status; int opaque; scalar_t__ keylen; scalar_t__ extlen; int bodylen; scalar_t__ cas; } ;
struct TYPE_7__ {TYPE_1__ response; } ;
struct TYPE_8__ {TYPE_2__ header; } ;
struct TYPE_9__ {TYPE_3__ message; } ;
typedef TYPE_4__ protocol_binary_response_no_extras ;
 scalar_t__ PROTOCOL_BINARY_RAW_BYTES ;
 scalar_t__ PROTOCOL_BINARY_RES ;
 scalar_t__ PROTOCOL_BINARY_RESPONSE_SUCCESS ;
 int assert (int) ;

__attribute__((used)) static void validate_response_header(protocol_binary_response_no_extras *response,
                                     uint8_t cmd, uint16_t status)
{
    assert(response->message.header.response.magic == PROTOCOL_BINARY_RES);
    assert(response->message.header.response.opcode == cmd);
    assert(response->message.header.response.datatype == PROTOCOL_BINARY_RAW_BYTES);
    assert(response->message.header.response.status == status);
    assert(response->message.header.response.opaque == 0xdeadbeef);

    if (status == PROTOCOL_BINARY_RESPONSE_SUCCESS) {
        switch (cmd) {
        case 157:
        case 155:
        case 153:
        case 151:
        case 149:
        case 139:
        case 136:
        case 134:
        case 132:
        case 130:
            assert("Quiet command shouldn't return on success" == ((void*)0));
        default:
            break;
        }

        switch (cmd) {
        case 158:
        case 133:
        case 131:
        case 156:
        case 137:
            assert(response->message.header.response.keylen == 0);
            assert(response->message.header.response.extlen == 0);
            assert(response->message.header.response.bodylen == 0);
            assert(response->message.header.response.cas != 0);
            break;
        case 150:
        case 138:
        case 135:
        case 152:
            assert(response->message.header.response.keylen == 0);
            assert(response->message.header.response.extlen == 0);
            assert(response->message.header.response.bodylen == 0);
            assert(response->message.header.response.cas == 0);
            break;

        case 154:
        case 140:
            assert(response->message.header.response.keylen == 0);
            assert(response->message.header.response.extlen == 0);
            assert(response->message.header.response.bodylen == 8);
            assert(response->message.header.response.cas != 0);
            break;

        case 129:
            assert(response->message.header.response.extlen == 0);

            assert(response->message.header.response.cas == 0);
            break;

        case 128:
            assert(response->message.header.response.keylen == 0);
            assert(response->message.header.response.extlen == 0);
            assert(response->message.header.response.bodylen != 0);
            assert(response->message.header.response.cas == 0);
            break;

        case 144:
        case 141:
        case 148:
        case 145:
            assert(response->message.header.response.keylen == 0);
            assert(response->message.header.response.extlen == 4);
            assert(response->message.header.response.cas != 0);
            break;

        case 143:
        case 142:
        case 147:
        case 146:
            assert(response->message.header.response.keylen != 0);
            assert(response->message.header.response.extlen == 4);
            assert(response->message.header.response.cas != 0);
            break;

        default:

            break;
        }
    } else {
        assert(response->message.header.response.cas == 0);
        assert(response->message.header.response.extlen == 0);
        if (cmd != 143 &&
            cmd != 147) {
            assert(response->message.header.response.keylen == 0);
        }
    }
}
