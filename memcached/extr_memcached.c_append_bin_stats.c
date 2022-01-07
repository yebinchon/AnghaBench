
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_6__ {int keylen; int opaque; int bodylen; int datatype; int opcode; int magic; } ;
struct TYPE_8__ {char const* bytes; TYPE_1__ response; } ;
typedef TYPE_3__ protocol_binary_response_header ;
struct TYPE_7__ {char* buffer; int offset; } ;
struct TYPE_9__ {TYPE_2__ stats; int opaque; } ;
typedef TYPE_4__ conn ;


 int PROTOCOL_BINARY_CMD_STAT ;
 int PROTOCOL_BINARY_RAW_BYTES ;
 int PROTOCOL_BINARY_RES ;
 int htonl (int) ;
 int htons (int const) ;
 int memcpy (char*,char const*,int const) ;

__attribute__((used)) static void append_bin_stats(const char *key, const uint16_t klen,
                             const char *val, const uint32_t vlen,
                             conn *c) {
    char *buf = c->stats.buffer + c->stats.offset;
    uint32_t bodylen = klen + vlen;
    protocol_binary_response_header header = {
        .response.magic = (uint8_t)PROTOCOL_BINARY_RES,
        .response.opcode = PROTOCOL_BINARY_CMD_STAT,
        .response.keylen = (uint16_t)htons(klen),
        .response.datatype = (uint8_t)PROTOCOL_BINARY_RAW_BYTES,
        .response.bodylen = htonl(bodylen),
        .response.opaque = c->opaque
    };

    memcpy(buf, header.bytes, sizeof(header.response));
    buf += sizeof(header.response);

    if (klen > 0) {
        memcpy(buf, key, klen);
        buf += klen;

        if (vlen > 0) {
            memcpy(buf, val, vlen);
        }
    }

    c->stats.offset += sizeof(header.response) + bodylen;
}
