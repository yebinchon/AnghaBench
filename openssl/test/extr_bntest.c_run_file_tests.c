
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ numpairs; int errors; int numtests; int fp; } ;
typedef TYPE_1__ STANZA ;


 int BIO_eof (int ) ;
 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 int TEST_ptr (TYPE_1__*) ;
 int file_test_run (TYPE_1__*) ;
 int test_clearstanza (TYPE_1__*) ;
 int test_end_file (TYPE_1__*) ;
 char* test_get_argument (int) ;
 scalar_t__ test_readstanza (TYPE_1__*) ;
 int test_start_file (TYPE_1__*,char*) ;

__attribute__((used)) static int run_file_tests(int i)
{
    STANZA *s = ((void*)0);
    char *testfile = test_get_argument(i);
    int c;

    if (!TEST_ptr(s = OPENSSL_zalloc(sizeof(*s))))
        return 0;
    if (!test_start_file(s, testfile)) {
        OPENSSL_free(s);
        return 0;
    }


    while (!BIO_eof(s->fp) && test_readstanza(s)) {
        if (s->numpairs == 0)
            continue;
        if (!file_test_run(s))
            s->errors++;
        s->numtests++;
        test_clearstanza(s);
    }
    test_end_file(s);
    c = s->errors;
    OPENSSL_free(s);

    return c == 0;
}
