
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef size_t uint32_t ;
typedef int protocol_binary_request_no_extras ;
struct TYPE_9__ {void* expiration; void* initial; void* delta; } ;
struct TYPE_7__ {int extlen; int opaque; void* bodylen; int keylen; int opcode; int magic; } ;
struct TYPE_8__ {TYPE_1__ request; } ;
struct TYPE_10__ {TYPE_3__ body; TYPE_2__ header; } ;
struct TYPE_11__ {TYPE_4__ message; } ;
typedef TYPE_5__ protocol_binary_request_incr ;
typedef int off_t ;


 int PROTOCOL_BINARY_REQ ;
 int assert (int) ;
 void* htonl (size_t) ;
 void* htonll (int ) ;
 int htons (size_t) ;
 int memcpy (char*,void const*,size_t) ;
 int memset (TYPE_5__*,int ,int) ;

__attribute__((used)) static off_t arithmetic_command(char* buf,
                                size_t bufsz,
                                uint8_t cmd,
                                const void* key,
                                size_t keylen,
                                uint64_t delta,
                                uint64_t initial,
                                uint32_t exp) {
    protocol_binary_request_incr *request = (void*)buf;
    assert(bufsz > sizeof(*request) + keylen);

    memset(request, 0, sizeof(*request));
    request->message.header.request.magic = PROTOCOL_BINARY_REQ;
    request->message.header.request.opcode = cmd;
    request->message.header.request.keylen = htons(keylen);
    request->message.header.request.extlen = 20;
    request->message.header.request.bodylen = htonl(keylen + 20);
    request->message.header.request.opaque = 0xdeadbeef;
    request->message.body.delta = htonll(delta);
    request->message.body.initial = htonll(initial);
    request->message.body.expiration = htonl(exp);

    off_t key_offset = sizeof(protocol_binary_request_no_extras) + 20;

    memcpy(buf + key_offset, key, keylen);
    return key_offset + keylen;
}
