#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ magic; int /*<<< orphan*/  opaque; int /*<<< orphan*/  keylen; int /*<<< orphan*/  opcode; int /*<<< orphan*/  cas; int /*<<< orphan*/  bodylen; } ;
struct TYPE_11__ {int* bytes; TYPE_1__ request; } ;
typedef  TYPE_2__ protocol_binary_request_header ;
struct TYPE_12__ {int rbytes; int sfd; scalar_t__ rcurr; int /*<<< orphan*/  last_cmd_time; scalar_t__ cas; TYPE_2__ binary_header; int /*<<< orphan*/  opaque; int /*<<< orphan*/  keylen; int /*<<< orphan*/  cmd; scalar_t__ iovused; scalar_t__ msgused; scalar_t__ msgcurr; scalar_t__ rbuf; } ;
typedef  TYPE_3__ conn ;
struct TYPE_13__ {int verbose; } ;

/* Variables and functions */
 scalar_t__ PROTOCOL_BINARY_REQ ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  conn_closing ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_time ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,char*) ; 
 TYPE_5__ settings ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC9(conn *c) {
    /* Do we have the complete packet header? */
    if (c->rbytes < sizeof(c->binary_header)) {
        /* need more data! */
        return 0;
    } else {
#ifdef NEED_ALIGN
        if (((long)(c->rcurr)) % 8 != 0) {
            /* must realign input buffer */
            memmove(c->rbuf, c->rcurr, c->rbytes);
            c->rcurr = c->rbuf;
            if (settings.verbose > 1) {
                fprintf(stderr, "%d: Realign input buffer\n", c->sfd);
            }
        }
#endif
        protocol_binary_request_header* req;
        req = (protocol_binary_request_header*)c->rcurr;

        if (settings.verbose > 1) {
            /* Dump the packet before we convert it to host order */
            int ii;
            FUNC3(stderr, "<%d Read binary protocol data:", c->sfd);
            for (ii = 0; ii < sizeof(req->bytes); ++ii) {
                if (ii % 4 == 0) {
                    FUNC3(stderr, "\n<%d   ", c->sfd);
                }
                FUNC3(stderr, " 0x%02x", req->bytes[ii]);
            }
            FUNC3(stderr, "\n");
        }

        c->binary_header = *req;
        c->binary_header.request.keylen = FUNC7(req->request.keylen);
        c->binary_header.request.bodylen = FUNC5(req->request.bodylen);
        c->binary_header.request.cas = FUNC6(req->request.cas);

        if (c->binary_header.request.magic != PROTOCOL_BINARY_REQ) {
            if (settings.verbose) {
                FUNC3(stderr, "Invalid magic:  %lx\n",
                        c->binary_header.request.magic);
            }
            FUNC1(c, conn_closing);
            return -1;
        }

        c->msgcurr = 0;
        c->msgused = 0;
        c->iovused = 0;
        if (FUNC0(c) != 0) {
            FUNC8(c,
                    "SERVER_ERROR Out of memory allocating headers");
            return 0;
        }

        c->cmd = c->binary_header.request.opcode;
        c->keylen = c->binary_header.request.keylen;
        c->opaque = c->binary_header.request.opaque;
        /* clear the returned cas value */
        c->cas = 0;

        c->last_cmd_time = current_time;
        FUNC2(c);

        c->rbytes -= sizeof(c->binary_header);
        c->rcurr += sizeof(c->binary_header);
    }

    return 1;
}