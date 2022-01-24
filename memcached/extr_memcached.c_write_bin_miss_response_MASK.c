#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  protocol_binary_response_header ;
struct TYPE_7__ {char* wbuf; int /*<<< orphan*/  write_and_go; } ;
typedef  TYPE_1__ conn ;

/* Variables and functions */
 int /*<<< orphan*/  PROTOCOL_BINARY_RESPONSE_KEY_ENOENT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,size_t) ; 
 int /*<<< orphan*/  conn_mwrite ; 
 int /*<<< orphan*/  conn_new_cmd ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(conn *c, char *key, size_t nkey) {
    if (nkey) {
        char *ofs = c->wbuf + sizeof(protocol_binary_response_header);
        FUNC0(c, PROTOCOL_BINARY_RESPONSE_KEY_ENOENT,
                0, nkey, nkey);
        FUNC3(ofs, key, nkey);
        FUNC1(c, ofs, nkey);
        FUNC2(c, conn_mwrite);
        c->write_and_go = conn_new_cmd;
    } else {
        FUNC4(c, PROTOCOL_BINARY_RESPONSE_KEY_ENOENT,
                        NULL, 0);
    }
}