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
typedef  int /*<<< orphan*/  inbuf ;
typedef  int /*<<< orphan*/  RedisSock ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 char* FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  redis_exception_ce ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char*,int,size_t*) ; 
 char* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char) ; 

char *
FUNC8(RedisSock *redis_sock, int *buf_len)
{
    char inbuf[4096];
    size_t len;

    *buf_len = 0;
    if (FUNC4(redis_sock, inbuf, sizeof(inbuf) - 1, &len) < 0) {
        return NULL;
    }

    switch(inbuf[0]) {
        case '-':
            FUNC6(redis_sock, inbuf+1, len);

            /* Filter our ERROR through the few that should actually throw */
            FUNC3(redis_sock);

            return NULL;
        case '$':
            *buf_len = FUNC0(inbuf + 1);
            return FUNC5(redis_sock, *buf_len);

        case '*':
            /* For null multi-bulk replies (like timeouts from brpoplpush): */
            if(FUNC2(inbuf + 1, "-1", 2) == 0) {
                return NULL;
            }
            /* fall through */

        case '+':
        case ':':
            /* Single Line Reply */
            /* +OK or :123 */
            if (len > 1) {
                *buf_len = len;
                return FUNC1(inbuf, *buf_len);
            }
        default:
            FUNC7(redis_exception_ce, 0,
                "protocol error, got '%c' as reply type byte\n",
                inbuf[0]
            );
    }

    return NULL;
}