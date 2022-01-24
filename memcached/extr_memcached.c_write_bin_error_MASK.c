#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int protocol_binary_response_status ;
struct TYPE_7__ {int sfd; int sbytes; int /*<<< orphan*/  write_and_go; } ;
typedef  TYPE_1__ conn ;
struct TYPE_8__ {int verbose; } ;

/* Variables and functions */
#define  PROTOCOL_BINARY_RESPONSE_AUTH_ERROR 136 
#define  PROTOCOL_BINARY_RESPONSE_DELTA_BADVAL 135 
#define  PROTOCOL_BINARY_RESPONSE_E2BIG 134 
#define  PROTOCOL_BINARY_RESPONSE_EINVAL 133 
#define  PROTOCOL_BINARY_RESPONSE_ENOMEM 132 
#define  PROTOCOL_BINARY_RESPONSE_KEY_EEXISTS 131 
#define  PROTOCOL_BINARY_RESPONSE_KEY_ENOENT 130 
#define  PROTOCOL_BINARY_RESPONSE_NOT_STORED 129 
#define  PROTOCOL_BINARY_RESPONSE_UNKNOWN_COMMAND 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  conn_mwrite ; 
 int /*<<< orphan*/  conn_new_cmd ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  conn_swallow ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int,...) ; 
 TYPE_3__ settings ; 
 int /*<<< orphan*/  stderr ; 
 size_t FUNC5 (char const*) ; 

__attribute__((used)) static void FUNC6(conn *c, protocol_binary_response_status err,
                            const char *errstr, int swallow) {
    size_t len;

    if (!errstr) {
        switch (err) {
        case PROTOCOL_BINARY_RESPONSE_ENOMEM:
            errstr = "Out of memory";
            break;
        case PROTOCOL_BINARY_RESPONSE_UNKNOWN_COMMAND:
            errstr = "Unknown command";
            break;
        case PROTOCOL_BINARY_RESPONSE_KEY_ENOENT:
            errstr = "Not found";
            break;
        case PROTOCOL_BINARY_RESPONSE_EINVAL:
            errstr = "Invalid arguments";
            break;
        case PROTOCOL_BINARY_RESPONSE_KEY_EEXISTS:
            errstr = "Data exists for key.";
            break;
        case PROTOCOL_BINARY_RESPONSE_E2BIG:
            errstr = "Too large.";
            break;
        case PROTOCOL_BINARY_RESPONSE_DELTA_BADVAL:
            errstr = "Non-numeric server-side value for incr or decr";
            break;
        case PROTOCOL_BINARY_RESPONSE_NOT_STORED:
            errstr = "Not stored.";
            break;
        case PROTOCOL_BINARY_RESPONSE_AUTH_ERROR:
            errstr = "Auth failure.";
            break;
        default:
            FUNC2(false);
            errstr = "UNHANDLED ERROR";
            FUNC4(stderr, ">%d UNHANDLED ERROR: %d\n", c->sfd, err);
        }
    }

    if (settings.verbose > 1) {
        FUNC4(stderr, ">%d Writing an error: %s\n", c->sfd, errstr);
    }

    len = FUNC5(errstr);
    FUNC0(c, err, 0, 0, len);
    if (len > 0) {
        FUNC1(c, errstr, len);
    }
    FUNC3(c, conn_mwrite);
    if(swallow > 0) {
        c->sbytes = swallow;
        c->write_and_go = conn_swallow;
    } else {
        c->write_and_go = conn_new_cmd;
    }
}