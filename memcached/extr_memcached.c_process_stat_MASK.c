#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {char* value; } ;
typedef  TYPE_2__ token_t ;
struct TYPE_22__ {char* buffer; unsigned int offset; } ;
struct TYPE_24__ {TYPE_1__ stats; } ;
typedef  TYPE_3__ conn ;
struct TYPE_25__ {int /*<<< orphan*/  dump_enabled; } ;

/* Variables and functions */
 unsigned int MAX_NUMBER_OF_SLAB_CLASSES ; 
 size_t SUBCOMMAND_TOKEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*),TYPE_3__*) ; 
 char* FUNC3 (unsigned int,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  (*) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*),TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  (*) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*),TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  (*) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*),TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/  (*) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*),TYPE_3__*) ; 
 TYPE_5__ settings ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ FUNC13 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char const*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,char*,unsigned int) ; 

__attribute__((used)) static void FUNC16(conn *c, token_t *tokens, const size_t ntokens) {
    const char *subcommand = tokens[SUBCOMMAND_TOKEN].value;
    FUNC1(c != NULL);

    if (ntokens < 2) {
        FUNC5(c, "CLIENT_ERROR bad command line");
        return;
    }

    if (ntokens == 2) {
        FUNC11(&append_stats, c);
        (void)FUNC2(NULL, 0, &append_stats, c);
    } else if (FUNC13(subcommand, "reset") == 0) {
        FUNC12();
        FUNC5(c, "RESET");
        return ;
    } else if (FUNC13(subcommand, "detail") == 0) {
        /* NOTE: how to tackle detail with binary? */
        if (ntokens < 4)
            FUNC9(c, "");  /* outputs the error message */
        else
            FUNC9(c, tokens[2].value);
        /* Output already generated */
        return ;
    } else if (FUNC13(subcommand, "settings") == 0) {
        FUNC7(&append_stats, c);
    } else if (FUNC13(subcommand, "cachedump") == 0) {
        char *buf;
        unsigned int bytes, id, limit = 0;

        if (!settings.dump_enabled) {
            FUNC5(c, "CLIENT_ERROR stats cachedump not allowed");
            return;
        }

        if (ntokens < 5) {
            FUNC5(c, "CLIENT_ERROR bad command line");
            return;
        }

        if (!FUNC10(tokens[2].value, &id) ||
            !FUNC10(tokens[3].value, &limit)) {
            FUNC5(c, "CLIENT_ERROR bad command line format");
            return;
        }

        if (id >= MAX_NUMBER_OF_SLAB_CLASSES) {
            FUNC5(c, "CLIENT_ERROR Illegal slab id");
            return;
        }

        buf = FUNC3(id, limit, &bytes);
        FUNC15(c, buf, bytes);
        return ;
    } else if (FUNC13(subcommand, "conns") == 0) {
        FUNC8(&append_stats, c);
#ifdef EXTSTORE
    } else if (strcmp(subcommand, "extstore") == 0) {
        process_extstore_stats(&append_stats, c);
#endif
    } else {
        /* getting here means that the subcommand is either engine specific or
           is invalid. query the engine and see. */
        if (FUNC2(subcommand, FUNC14(subcommand), &append_stats, c)) {
            if (c->stats.buffer == NULL) {
                FUNC4(c, "SERVER_ERROR out of memory writing stats");
            } else {
                FUNC15(c, c->stats.buffer, c->stats.offset);
                c->stats.buffer = NULL;
            }
        } else {
            FUNC5(c, "ERROR");
        }
        return ;
    }

    /* append terminator and start the transfer */
    FUNC0(NULL, 0, NULL, 0, c);

    if (c->stats.buffer == NULL) {
        FUNC4(c, "SERVER_ERROR out of memory writing stats");
    } else {
        FUNC15(c, c->stats.buffer, c->stats.offset);
        c->stats.buffer = NULL;
    }
}