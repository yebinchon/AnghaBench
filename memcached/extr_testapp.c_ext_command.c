
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {size_t extlen; int opaque; int bodylen; int keylen; int opcode; int magic; } ;
struct TYPE_7__ {TYPE_1__ request; } ;
struct TYPE_8__ {TYPE_2__ header; } ;
struct TYPE_9__ {TYPE_3__ message; } ;
typedef TYPE_4__ protocol_binary_request_no_extras ;
typedef int off_t ;


 int PROTOCOL_BINARY_REQ ;
 int assert (int) ;
 int htonl (size_t) ;
 int htons (size_t) ;
 int memcpy (char*,void const*,size_t) ;
 int memset (TYPE_4__*,int ,int) ;

__attribute__((used)) static off_t ext_command(char* buf,
                         size_t bufsz,
                         uint8_t cmd,
                         const void* ext,
                         size_t extlen,
                         const void* key,
                         size_t keylen,
                         const void* dta,
                         size_t dtalen) {
    protocol_binary_request_no_extras *request = (void*)buf;
    assert(bufsz > sizeof(*request) + extlen + keylen + dtalen);

    memset(request, 0, sizeof(*request));
    request->message.header.request.magic = PROTOCOL_BINARY_REQ;
    request->message.header.request.opcode = cmd;
    request->message.header.request.extlen = extlen;
    request->message.header.request.keylen = htons(keylen);
    request->message.header.request.bodylen = htonl(extlen + keylen + dtalen);
    request->message.header.request.opaque = 0xdeadbeef;

    off_t ext_offset = sizeof(protocol_binary_request_no_extras);
    off_t key_offset = ext_offset + extlen;
    off_t dta_offset = key_offset + keylen;

    if (ext != ((void*)0)) {
        memcpy(buf + ext_offset, ext, extlen);
    }
    if (key != ((void*)0)) {
        memcpy(buf + key_offset, key, keylen);
    }
    if (dta != ((void*)0)) {
        memcpy(buf + dta_offset, dta, dtalen);
    }

    return sizeof(*request) + extlen + keylen + dtalen;
}
