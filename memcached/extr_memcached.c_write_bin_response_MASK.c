#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ cmd; int /*<<< orphan*/  write_and_go; int /*<<< orphan*/  noreply; } ;
typedef  TYPE_1__ conn ;

/* Variables and functions */
 scalar_t__ PROTOCOL_BINARY_CMD_GET ; 
 scalar_t__ PROTOCOL_BINARY_CMD_GETK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,void*,int) ; 
 int /*<<< orphan*/  conn_mwrite ; 
 int /*<<< orphan*/  conn_new_cmd ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(conn *c, void *d, int hlen, int keylen, int dlen) {
    if (!c->noreply || c->cmd == PROTOCOL_BINARY_CMD_GET ||
        c->cmd == PROTOCOL_BINARY_CMD_GETK) {
        FUNC0(c, 0, hlen, keylen, dlen);
        if(dlen > 0) {
            FUNC1(c, d, dlen);
        }
        FUNC2(c, conn_mwrite);
        c->write_and_go = conn_new_cmd;
    } else {
        FUNC2(c, conn_new_cmd);
    }
}