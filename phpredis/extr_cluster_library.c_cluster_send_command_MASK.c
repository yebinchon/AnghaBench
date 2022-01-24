#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct TYPE_14__ {short cmd_slot; scalar_t__ redir_type; long waitms; void* cmd_sock; scalar_t__ clusterdown; TYPE_1__* flags; int /*<<< orphan*/  reply_type; } ;
typedef  TYPE_2__ redisCluster ;
struct TYPE_13__ {scalar_t__ mode; } ;
struct TYPE_12__ {scalar_t__ mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 TYPE_10__* FUNC1 (TYPE_2__*) ; 
 scalar_t__ MULTI ; 
 scalar_t__ REDIR_MOVED ; 
 scalar_t__ REDIR_NONE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,short) ; 
 void* FUNC3 (TYPE_2__*,short) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_2__*,short) ; 
 int FUNC6 (TYPE_2__*,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 long FUNC8 () ; 
 int /*<<< orphan*/  redis_cluster_exception_ce ; 
 int /*<<< orphan*/  FUNC9 (void*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,short) ; 

short FUNC11(redisCluster *c, short slot, const char *cmd,
                                         int cmd_len)
{
    int resp, timedout = 0;
    long msstart;

    if (!FUNC2(c, slot)) {
        FUNC10(redis_cluster_exception_ce, 0,
            "The slot %d is not covered by any node in this cluster", slot);
        return -1;
    }
    /* Set the slot we're operating against as well as it's socket.  These can
     * change during our request loop if we have a master failure and are
     * configured to fall back to slave nodes, or if we have to fall back to
     * a different slot due to no nodes serving this slot being reachable. */
    c->cmd_slot = slot;
    c->cmd_sock = FUNC3(c, slot);

    /* Get the current time in milliseconds to handle any timeout */
    msstart = FUNC8();

    /* Our main cluster request/reply loop.  This loop runs until we're able to
     * get a valid reply from a node, hit our "request" timeout, or enounter a
     * CLUSTERDOWN state from Redis Cluster. */
    do {
        /* Send MULTI to the socket if we're in MULTI mode but haven't yet */
        if (c->flags->mode == MULTI && FUNC1(c)->mode != MULTI) {
            /* We have to fail if we can't send MULTI to the node */
            if (FUNC5(c, slot) == -1) {
                FUNC0("Unable to enter MULTI mode on requested slot", 0);
                return -1;
            }
        }

        /* Attempt to deliver our command to the node, and that failing, to any
         * node until we find one that is available. */
        if (FUNC6(c, cmd, cmd_len, 0) == -1) {
            /* We have to abort, as no nodes are reachable */
            FUNC0("Can't communicate with any node in the cluster", 0);
            return -1;
        }

        /* Check response and short-circuit on success or communication error */
        resp = FUNC4(c, &c->reply_type);
        if (resp <= 0) {
            break;
        }

        /* Handle MOVED or ASKING redirection */
        if (resp == 1) {
           /* Abort if we're in a transaction as it will be invalid */
           if (c->flags->mode == MULTI) {
               FUNC0("Can't process MULTI sequence when cluster is resharding", 0);
               return -1;
           }

           /* Update mapping if the data has MOVED */
           if (c->redir_type == REDIR_MOVED) {
               FUNC7(c);
               c->cmd_sock = FUNC3(c, slot);
           }
        }

        /* See if we've timed out in the command loop */
        timedout = c->waitms ? FUNC8() - msstart >= c->waitms : 0;
    } while (!c->clusterdown && !timedout);

    // If we've detected the cluster is down, throw an exception
    if (c->clusterdown) {
        FUNC0("The Redis Cluster is down (CLUSTERDOWN)", 0);
        return -1;
    } else if (timedout || resp == -1) {
        // Make sure the socket is reconnected, it such that it is in a clean state
        FUNC9(c->cmd_sock, 1);

        if (timedout) {
            FUNC0(
                "Timed out attempting to find data in the correct node!", 0);
        } else {
            FUNC0(
                "Error processing response from Redis node!", 0);
        }

        return -1;
    }

    /* Clear redirection flag */
    c->redir_type = REDIR_NONE;

    // Success, return the slot where data exists.
    return 0;
}