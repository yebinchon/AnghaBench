
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct jsonsl_state_st {int nelem; } ;
typedef int jsonsl_uchar_t ;
typedef TYPE_1__* jsonsl_t ;
struct TYPE_3__ {int pos; } ;


 int FASTPARSE_BREAK ;
 int FASTPARSE_EXHAUSTED ;
 int INCR_METRIC (int ) ;
 int NUMBER_FASTPATH ;
 int TOTAL ;
 scalar_t__ isdigit (int) ;

__attribute__((used)) static int
jsonsl__num_fastparse(jsonsl_t jsn,
                      const jsonsl_uchar_t **bytes_p, size_t *nbytes_p,
                      struct jsonsl_state_st *state)
{
    int exhausted = 1;
    size_t nbytes = *nbytes_p;
    const jsonsl_uchar_t *bytes = *bytes_p;

    for (; nbytes; nbytes--, bytes++) {
        jsonsl_uchar_t c = *bytes;
        if (isdigit(c)) {
            INCR_METRIC(TOTAL);
            INCR_METRIC(NUMBER_FASTPATH);
            state->nelem = (state->nelem * 10) + (c - 0x30);
        } else {
            exhausted = 0;
            break;
        }
    }
    jsn->pos += (*nbytes_p - nbytes);
    if (exhausted) {
        return FASTPARSE_EXHAUSTED;
    }
    *nbytes_p = nbytes;
    *bytes_p = bytes;
    return FASTPARSE_BREAK;
}
