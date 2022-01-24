#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int /*<<< orphan*/ * buffer; int /*<<< orphan*/  offset; } ;
struct TYPE_18__ {size_t keylen; } ;
struct TYPE_19__ {TYPE_1__ request; } ;
struct TYPE_21__ {int sfd; TYPE_3__ stats; TYPE_2__ binary_header; } ;
typedef  TYPE_4__ conn ;
struct TYPE_22__ {int verbose; int detail_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  PROTOCOL_BINARY_RESPONSE_KEY_ENOENT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,int,TYPE_4__*) ; 
 char* FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,size_t,int /*<<< orphan*/  (*) (char*,int /*<<< orphan*/ ,char*,int,TYPE_4__*),TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  (*) (char*,int /*<<< orphan*/ ,char*,int,TYPE_4__*),TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  (*) (char*,int /*<<< orphan*/ ,char*,int,TYPE_4__*),TYPE_4__*) ; 
 TYPE_7__ settings ; 
 char* FUNC8 (int*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 scalar_t__ FUNC11 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC14(conn *c) {
    char *subcommand = FUNC1(c);
    size_t nkey = c->binary_header.request.keylen;

    if (settings.verbose > 1) {
        int ii;
        FUNC2(stderr, "<%d STATS ", c->sfd);
        for (ii = 0; ii < nkey; ++ii) {
            FUNC2(stderr, "%c", subcommand[ii]);
        }
        FUNC2(stderr, "\n");
    }

    if (nkey == 0) {
        /* request all statistics */
        FUNC7(&append_stats, c);
        (void)FUNC4(NULL, 0, &append_stats, c);
    } else if (FUNC11(subcommand, "reset", 5) == 0) {
        FUNC9();
    } else if (FUNC11(subcommand, "settings", 8) == 0) {
        FUNC6(&append_stats, c);
    } else if (FUNC11(subcommand, "detail", 6) == 0) {
        char *subcmd_pos = subcommand + 6;
        if (FUNC11(subcmd_pos, " dump", 5) == 0) {
            int len;
            char *dump_buf = FUNC8(&len);
            if (dump_buf == NULL || len <= 0) {
                FUNC5(c, "SERVER_ERROR Out of memory generating stats");
                if (dump_buf != NULL)
                    FUNC3(dump_buf);
                return;
            } else {
                FUNC0("detailed", FUNC10("detailed"), dump_buf, len, c);
                FUNC3(dump_buf);
            }
        } else if (FUNC11(subcmd_pos, " on", 3) == 0) {
            settings.detail_enabled = 1;
        } else if (FUNC11(subcmd_pos, " off", 4) == 0) {
            settings.detail_enabled = 0;
        } else {
            FUNC13(c, PROTOCOL_BINARY_RESPONSE_KEY_ENOENT, NULL, 0);
            return;
        }
    } else {
        if (FUNC4(subcommand, nkey, &append_stats, c)) {
            if (c->stats.buffer == NULL) {
                FUNC5(c, "SERVER_ERROR Out of memory generating stats");
            } else {
                FUNC12(c, c->stats.buffer, c->stats.offset);
                c->stats.buffer = NULL;
            }
        } else {
            FUNC13(c, PROTOCOL_BINARY_RESPONSE_KEY_ENOENT, NULL, 0);
        }

        return;
    }

    /* Append termination package and start the transfer */
    FUNC0(NULL, 0, NULL, 0, c);
    if (c->stats.buffer == NULL) {
        FUNC5(c, "SERVER_ERROR Out of memory preparing to send stats");
    } else {
        FUNC12(c, c->stats.buffer, c->stats.offset);
        c->stats.buffer = NULL;
    }
}