
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int errors; int key; int numskip; int fp; } ;
struct TYPE_10__ {TYPE_2__ s; scalar_t__ skip; } ;
typedef TYPE_1__ EVP_TEST ;


 int BIO_eof (int ) ;
 int BIO_free (int ) ;
 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 int TEST_ptr (TYPE_1__*) ;
 int clear_test (TYPE_1__*) ;
 int free_key_list (int ) ;
 int parse (TYPE_1__*) ;
 int private_keys ;
 int public_keys ;
 int run_test (TYPE_1__*) ;
 int test_end_file (TYPE_2__*) ;
 char* test_get_argument (int) ;
 int test_start_file (TYPE_2__*,char const*) ;

__attribute__((used)) static int run_file_tests(int i)
{
    EVP_TEST *t;
    const char *testfile = test_get_argument(i);
    int c;

    if (!TEST_ptr(t = OPENSSL_zalloc(sizeof(*t))))
        return 0;
    if (!test_start_file(&t->s, testfile)) {
        OPENSSL_free(t);
        return 0;
    }

    while (!BIO_eof(t->s.fp)) {
        c = parse(t);
        if (t->skip) {
            t->s.numskip++;
            continue;
        }
        if (c == 0 || !run_test(t)) {
            t->s.errors++;
            break;
        }
    }
    test_end_file(&t->s);
    clear_test(t);

    free_key_list(public_keys);
    free_key_list(private_keys);
    BIO_free(t->s.key);
    c = t->s.errors;
    OPENSSL_free(t);
    return c == 0;
}
