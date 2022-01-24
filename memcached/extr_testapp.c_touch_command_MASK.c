#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  size_t uint32_t ;
struct TYPE_8__ {int extlen; int opaque; void* bodylen; int /*<<< orphan*/  keylen; int /*<<< orphan*/  opcode; int /*<<< orphan*/  magic; } ;
struct TYPE_9__ {TYPE_2__ request; } ;
struct TYPE_7__ {void* expiration; } ;
struct TYPE_10__ {TYPE_3__ header; TYPE_1__ body; } ;
struct TYPE_11__ {TYPE_4__ message; } ;
typedef  TYPE_5__ protocol_binary_request_touch ;
typedef  int /*<<< orphan*/  protocol_binary_request_no_extras ;
typedef  int off_t ;

/* Variables and functions */
 int /*<<< orphan*/  PROTOCOL_BINARY_REQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static off_t FUNC5(char* buf,
                           size_t bufsz,
                           uint8_t cmd,
                           const void* key,
                           size_t keylen,
                           uint32_t exptime) {
    protocol_binary_request_touch *request = (void*)buf;
    FUNC0(bufsz > sizeof(*request));

    FUNC4(request, 0, sizeof(*request));
    request->message.header.request.magic = PROTOCOL_BINARY_REQ;
    request->message.header.request.opcode = cmd;

    request->message.header.request.keylen = FUNC2(keylen);
    request->message.header.request.extlen = 4;
    request->message.body.expiration = FUNC1(exptime);
    request->message.header.request.bodylen = FUNC1(keylen + 4);

    request->message.header.request.opaque = 0xdeadbeef;

    off_t key_offset = sizeof(protocol_binary_request_no_extras) + 4;

    FUNC3(buf + key_offset, key, keylen);
    return sizeof(protocol_binary_request_no_extras) + 4 + keylen;
}