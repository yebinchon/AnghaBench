#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {long long reply_len; int /*<<< orphan*/  line_reply; TYPE_2__* cmd_sock; int /*<<< orphan*/  redirections; } ;
typedef  TYPE_1__ redisCluster ;
typedef  int /*<<< orphan*/  inbuf ;
struct TYPE_10__ {int /*<<< orphan*/  stream; } ;
typedef  int /*<<< orphan*/  REDIS_REPLY_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  EOF ; 
 scalar_t__ FUNC2 (char*) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  TYPE_ERR ; 
 int /*<<< orphan*/  TYPE_LINE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,scalar_t__) ; 
 scalar_t__ FUNC5 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC8 (TYPE_2__*,int) ; 
 scalar_t__ FUNC9 (TYPE_2__*,int /*<<< orphan*/ ,int,size_t*) ; 
 scalar_t__ FUNC10 (char*) ; 
 long long FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC12(redisCluster *c, REDIS_REPLY_TYPE *reply_type
                                 )
{
    size_t sz;

    // Clear out any prior error state and our last line response
    FUNC0(c);
    FUNC1(c);

    if (-1 == FUNC8(c->cmd_sock, 1) ||
       EOF == (*reply_type = FUNC6(c->cmd_sock->stream)))
    {
        return -1;
    }

    // In the event of an ERROR, check if it's a MOVED/ASK error
    if (*reply_type == TYPE_ERR) {
        char inbuf[4096];
        int moved;

        // Attempt to read the error
        if (!FUNC7(c->cmd_sock->stream, inbuf, sizeof(inbuf))) {
            return -1;
        }

        // Check for MOVED or ASK redirection
        if ((moved = FUNC3(inbuf)) || FUNC2(inbuf)) { // Set our redirection information
            /* We'll want to invalidate slot cache if we're using one */
            c->redirections++;

            if (FUNC5(c,inbuf,moved) < 0) {
                return -1;
            }

            // Data moved
            return 1;
        } else {
            // Capture the error string Redis returned
            FUNC4(c, inbuf, FUNC10(inbuf)-2);
            return 0;
        }
    }

    // Fetch the first line of our response from Redis.
    if (FUNC9(c->cmd_sock,c->line_reply,sizeof(c->line_reply),
                       &sz) < 0)
    {
        return -1;
    }

    // For replies that will give us a numberic length, convert it
    if (*reply_type != TYPE_LINE) {
        c->reply_len = FUNC11(c->line_reply, NULL, 10);
    } else {
        c->reply_len = (long long)sz;
    }

    // Clear out any previous error, and return that the data is here
    FUNC0(c);
    return 0;
}