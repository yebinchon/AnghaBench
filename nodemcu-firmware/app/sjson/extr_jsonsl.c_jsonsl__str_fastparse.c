
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int jsonsl_uchar_t ;
typedef TYPE_1__* jsonsl_t ;
struct TYPE_3__ {int pos; } ;


 int FASTPARSE_BREAK ;
 int FASTPARSE_EXHAUSTED ;
 int INCR_METRIC (int ) ;
 int STRINGY_INSIGNIFICANT ;
 int TOTAL ;
 scalar_t__ is_simple_char (int const) ;

__attribute__((used)) static int
jsonsl__str_fastparse(jsonsl_t jsn,
                      const jsonsl_uchar_t **bytes_p, size_t *nbytes_p)
{
    const jsonsl_uchar_t *bytes = *bytes_p;
    const jsonsl_uchar_t *end;
    for (end = bytes + *nbytes_p; bytes != end; bytes++) {
        if (



                (is_simple_char(*bytes))) {
            INCR_METRIC(TOTAL);
            INCR_METRIC(STRINGY_INSIGNIFICANT);
        } else {

            jsn->pos += (bytes - *bytes_p);
            *nbytes_p -= (bytes - *bytes_p);
            *bytes_p = bytes;
            return FASTPARSE_BREAK;
        }
    }


    jsn->pos += (bytes - *bytes_p);
    return FASTPARSE_EXHAUSTED;
}
