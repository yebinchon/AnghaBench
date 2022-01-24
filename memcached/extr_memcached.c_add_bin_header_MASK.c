#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  void* uint16_t ;
struct TYPE_14__ {int /*<<< orphan*/  cas; int /*<<< orphan*/  opaque; int /*<<< orphan*/  bodylen; void* status; void* datatype; void* extlen; void* keylen; int /*<<< orphan*/  opcode; void* magic; } ;
struct TYPE_15__ {int* bytes; TYPE_3__ response; } ;
typedef  TYPE_4__ protocol_binary_response_header ;
struct TYPE_12__ {int /*<<< orphan*/  opcode; } ;
struct TYPE_13__ {TYPE_1__ request; } ;
struct TYPE_16__ {int sfd; scalar_t__ wbuf; int /*<<< orphan*/  cas; int /*<<< orphan*/  opaque; TYPE_2__ binary_header; scalar_t__ iovused; scalar_t__ msgused; scalar_t__ msgcurr; } ;
typedef  TYPE_5__ conn ;
struct TYPE_17__ {int verbose; } ;

/* Variables and functions */
 scalar_t__ PROTOCOL_BINARY_RAW_BYTES ; 
 scalar_t__ PROTOCOL_BINARY_RES ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,scalar_t__,int) ; 
 scalar_t__ FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,char*) ; 
 TYPE_6__ settings ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC8(conn *c, uint16_t err, uint8_t hdr_len, uint16_t key_len, uint32_t body_len) {
    protocol_binary_response_header* header;

    FUNC2(c);

    c->msgcurr = 0;
    c->msgused = 0;
    c->iovused = 0;
    if (FUNC1(c) != 0) {
        /* This should never run out of memory because iov and msg lists
         * have minimum sizes big enough to hold an error response.
         */
        FUNC7(c, "SERVER_ERROR out of memory adding binary header");
        return;
    }

    header = (protocol_binary_response_header *)c->wbuf;

    header->response.magic = (uint8_t)PROTOCOL_BINARY_RES;
    header->response.opcode = c->binary_header.request.opcode;
    header->response.keylen = (uint16_t)FUNC6(key_len);

    header->response.extlen = (uint8_t)hdr_len;
    header->response.datatype = (uint8_t)PROTOCOL_BINARY_RAW_BYTES;
    header->response.status = (uint16_t)FUNC6(err);

    header->response.bodylen = FUNC4(body_len);
    header->response.opaque = c->opaque;
    header->response.cas = FUNC5(c->cas);

    if (settings.verbose > 1) {
        int ii;
        FUNC3(stderr, ">%d Writing bin response:", c->sfd);
        for (ii = 0; ii < sizeof(header->bytes); ++ii) {
            if (ii % 4 == 0) {
                FUNC3(stderr, "\n>%d  ", c->sfd);
            }
            FUNC3(stderr, " 0x%02x", header->bytes[ii]);
        }
        FUNC3(stderr, "\n");
    }

    FUNC0(c, c->wbuf, sizeof(header->response));
}