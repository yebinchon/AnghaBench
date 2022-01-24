#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct web_client {int /*<<< orphan*/  id; int /*<<< orphan*/  stats_sent_bytes; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  D_DEFLATE ; 
 int /*<<< orphan*/  D_WEB_CLIENT ; 
 int /*<<< orphan*/  FUNC0 (struct web_client*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC2 (struct web_client*,char*,int,int /*<<< orphan*/ ) ; 

ssize_t FUNC3(struct web_client *w)
{
    //debug(D_DEFLATE, "%llu: CLOSE CHUNK.", w->id);

    ssize_t bytes;
    bytes = FUNC2(w,"\r\n",2,0);
    if(bytes > 0) {
        FUNC1(D_DEFLATE, "%llu: Sent chunk suffix %zd bytes.", w->id, bytes);
        w->stats_sent_bytes += bytes;
    }

    else if(bytes == 0) {
        FUNC1(D_WEB_CLIENT, "%llu: Did not send chunk suffix to the client.", w->id);
        FUNC0(w);
    }
    else {
        FUNC1(D_WEB_CLIENT, "%llu: Failed to send chunk suffix to client.", w->id);
        FUNC0(w);
    }

    return bytes;
}