#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct priv {int fd; scalar_t__ orig_size; int appending; int /*<<< orphan*/  cancel; scalar_t__ use_poll; scalar_t__ regular_file; } ;
struct pollfd {int fd; int events; int revents; } ;
struct TYPE_5__ {struct priv* priv; } ;
typedef  TYPE_1__ stream_t ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 int MAX_RETRIES ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int POLLIN ; 
 int /*<<< orphan*/  RETRY_TIMEOUT ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct pollfd*,int,int) ; 
 int FUNC5 (int,void*,int) ; 

__attribute__((used)) static int FUNC6(stream_t *s, void *buffer, int max_len)
{
    struct priv *p = s->priv;

#ifndef __MINGW32__
    if (p->use_poll) {
        int c = FUNC2(p->cancel);
        struct pollfd fds[2] = {
            {.fd = p->fd, .events = POLLIN},
            {.fd = c, .events = POLLIN},
        };
        FUNC4(fds, c >= 0 ? 2 : 1, -1);
        if (fds[1].revents & POLLIN)
            return -1;
    }
#endif

    for (int retries = 0; retries < MAX_RETRIES; retries++) {
        int r = FUNC5(p->fd, buffer, max_len);
        if (r > 0)
            return r;

        // Try to detect and handle files being appended during playback.
        int64_t size = FUNC1(s);
        if (p->regular_file && size > p->orig_size && !p->appending) {
            FUNC0(s, "File is apparently being appended to, will keep "
                    "retrying with timeouts.\n");
            p->appending = true;
        }

        if (!p->appending || p->use_poll)
            break;

        if (FUNC3(p->cancel, RETRY_TIMEOUT))
            break;
    }

    return 0;
}