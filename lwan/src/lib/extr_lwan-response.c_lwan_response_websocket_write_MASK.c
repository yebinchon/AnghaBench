#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  buffer; } ;
struct lwan_request {TYPE_2__ response; TYPE_1__* conn; } ;
struct TYPE_3__ {int flags; } ;

/* Variables and functions */
 int CONN_IS_WEBSOCKET ; 
 int WS_OPCODE_TEXT ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lwan_request*,unsigned char,char*,size_t) ; 

void FUNC4(struct lwan_request *request)
{
    size_t len = FUNC1(request->response.buffer);
    char *msg = FUNC0(request->response.buffer);
    /* FIXME: does it make a difference if we use WS_OPCODE_TEXT or
     * WS_OPCODE_BINARY? */
    unsigned char header = 0x80 | WS_OPCODE_TEXT;

    if (!(request->conn->flags & CONN_IS_WEBSOCKET))
        return;

    FUNC3(request, header, msg, len);
    FUNC2(request->response.buffer);
}