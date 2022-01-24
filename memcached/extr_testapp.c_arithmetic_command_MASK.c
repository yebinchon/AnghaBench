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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  size_t uint32_t ;
typedef  int /*<<< orphan*/  protocol_binary_request_no_extras ;
struct TYPE_9__ {void* expiration; void* initial; void* delta; } ;
struct TYPE_7__ {int extlen; int opaque; void* bodylen; int /*<<< orphan*/  keylen; int /*<<< orphan*/  opcode; int /*<<< orphan*/  magic; } ;
struct TYPE_8__ {TYPE_1__ request; } ;
struct TYPE_10__ {TYPE_3__ body; TYPE_2__ header; } ;
struct TYPE_11__ {TYPE_4__ message; } ;
typedef  TYPE_5__ protocol_binary_request_incr ;
typedef  int off_t ;

/* Variables and functions */
 int /*<<< orphan*/  PROTOCOL_BINARY_REQ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (size_t) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static off_t FUNC6(char* buf,
                                size_t bufsz,
                                uint8_t cmd,
                                const void* key,
                                size_t keylen,
                                uint64_t delta,
                                uint64_t initial,
                                uint32_t exp) {
    protocol_binary_request_incr *request = (void*)buf;
    FUNC0(bufsz > sizeof(*request) + keylen);

    FUNC5(request, 0, sizeof(*request));
    request->message.header.request.magic = PROTOCOL_BINARY_REQ;
    request->message.header.request.opcode = cmd;
    request->message.header.request.keylen = FUNC3(keylen);
    request->message.header.request.extlen = 20;
    request->message.header.request.bodylen = FUNC1(keylen + 20);
    request->message.header.request.opaque = 0xdeadbeef;
    request->message.body.delta = FUNC2(delta);
    request->message.body.initial = FUNC2(initial);
    request->message.body.expiration = FUNC1(exp);

    off_t key_offset = sizeof(protocol_binary_request_no_extras) + 20;

    FUNC4(buf + key_offset, key, keylen);
    return key_offset + keylen;
}