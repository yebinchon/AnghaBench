#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned int state; int /*<<< orphan*/  outstanding; } ;
struct Output {TYPE_1__ redis; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char const) ; 

__attribute__((used)) static int
FUNC3(struct Output *out, const unsigned char *px, size_t length)
{
    unsigned state = out->redis.state;
    unsigned i;
    enum {
        START,
        NUMBER,
        P,
        PO,
        PON,
        PONG,
        PONG_CR,
        PONG_CR_LF
    };

    for (i=0; i<length; i++)
    switch (state) {
    case START:
        switch (px[i]) {
        case '+':
            state = P;
            break;
        case ':':
            state = NUMBER;
            break;
        default:
            FUNC0(0, "redis: unexpected data: %.*s\n", (int)(length-i), px+i);
            FUNC1(1);
            break;
        }
        break;
    case NUMBER:
        if (FUNC2(px[i]) || px[i] == '\r')
            ;
        else if (px[i] == '\n') {
            state = 0;
            if (out->redis.outstanding == 0) {
                FUNC0(0, "redis: out of sync\n");
                FUNC1(1);
            }
            out->redis.outstanding--;
        } else {
            FUNC0(0, "redis: unexpected data: %.*s\n", (int)(length-i), px+i);
            FUNC1(1);
        }
        break;
    case P:
    case PO:
    case PON:
    case PONG_CR:
    case PONG_CR_LF:
        if ("PONG+\r\n"[i-P] == px[i]) {
            state++;
            if (px[i] == '\n') {
                out->redis.state = 0;
                return 1;
            }
        } else {
            FUNC0(0, "redis: unexpected data: %.*s\n", (int)(length-i), px+i);
            FUNC1(1);
        }
    default:
        FUNC0(0, "redis: unexpected state: %u\n", state);
        FUNC1(1);
    }
    out->redis.state = state;
    return 0;
}