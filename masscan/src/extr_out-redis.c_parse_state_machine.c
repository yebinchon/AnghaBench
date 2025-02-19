
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int state; int outstanding; } ;
struct Output {TYPE_1__ redis; } ;


 int LOG (int ,char*,...) ;
 int exit (int) ;
 int isdigit (unsigned char const) ;

__attribute__((used)) static int
parse_state_machine(struct Output *out, const unsigned char *px, size_t length)
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
            LOG(0, "redis: unexpected data: %.*s\n", (int)(length-i), px+i);
            exit(1);
            break;
        }
        break;
    case NUMBER:
        if (isdigit(px[i]) || px[i] == '\r')
            ;
        else if (px[i] == '\n') {
            state = 0;
            if (out->redis.outstanding == 0) {
                LOG(0, "redis: out of sync\n");
                exit(1);
            }
            out->redis.outstanding--;
        } else {
            LOG(0, "redis: unexpected data: %.*s\n", (int)(length-i), px+i);
            exit(1);
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
            LOG(0, "redis: unexpected data: %.*s\n", (int)(length-i), px+i);
            exit(1);
        }
    default:
        LOG(0, "redis: unexpected state: %u\n", state);
        exit(1);
    }
    out->redis.state = state;
    return 0;
}
