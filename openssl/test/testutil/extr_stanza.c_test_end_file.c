
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fp; int numskip; int errors; int numtests; } ;
typedef TYPE_1__ STANZA ;


 int BIO_free (int ) ;
 int TEST_info (char*,int ,int ,int ) ;

int test_end_file(STANZA *s)
{
    TEST_info("Completed %d tests with %d errors and %d skipped",
              s->numtests, s->errors, s->numskip);
    BIO_free(s->fp);
    return 1;
}
