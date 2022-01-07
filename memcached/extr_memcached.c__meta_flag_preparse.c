
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct _meta_flags {int locked; int vivify; int la; int no_update; int no_reply; int set_stale; } ;



__attribute__((used)) static int _meta_flag_preparse(char *opts, size_t olen, struct _meta_flags *of) {
    unsigned int i;



    uint8_t seen[127] = {0};

    int tokens = 0;
    for (i = 0; i < olen; i++) {
        uint8_t o = (uint8_t)opts[i];

        if (o >= 127 || seen[o] != 0) {
            return -1;
        }
        seen[o] = 1;

        switch (opts[i]) {
            case 'N':
                of->locked = 1;
                of->vivify = 1;
                tokens++;
                break;
            case 'T':
                tokens++;
                of->locked = 1;
                break;
            case 'R':
                of->locked = 1;
                tokens++;
                break;
            case 'l':
                of->la = 1;
                of->locked = 1;
                break;
            case 'O':
                tokens++;
                break;
            case 'k':
            case 's':
            case 't':
            case 'c':
            case 'v':
            case 'f':
                break;
            case 'h':
                of->locked = 1;
                break;
            case 'u':
                of->no_update = 1;
                break;
            case 'q':
                of->no_reply = 1;
                break;

            case 'F':
            case 'S':
            case 'C':
                tokens++;
                break;
            case 'I':
                of->set_stale = 1;
                break;
            default:
                return -1;
        }
    }

    return tokens;
}
