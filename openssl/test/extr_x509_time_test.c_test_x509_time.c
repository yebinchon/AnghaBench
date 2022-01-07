
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int expected; int expected_type; int expected_string; int data; scalar_t__ set_string; } ;
struct TYPE_6__ {int type; int data; } ;
typedef TYPE_1__ ASN1_TIME ;


 int ASN1_TIME_free (TYPE_1__*) ;
 TYPE_1__* ASN1_TIME_new () ;
 int ASN1_TIME_set_string_X509 (TYPE_1__*,int ) ;
 int TEST_info (char*,int,...) ;
 int TEST_int_eq (int,int) ;
 int TEST_str_eq (char const*,int) ;
 TYPE_2__* x509_format_tests ;

__attribute__((used)) static int test_x509_time(int idx)
{
    ASN1_TIME *t = ((void*)0);
    int result, rv = 0;

    if (x509_format_tests[idx].set_string) {

        t = ASN1_TIME_new();
        if (t == ((void*)0)) {
            TEST_info("test_x509_time(%d) failed: internal error\n", idx);
            return 0;
        }
    }

    result = ASN1_TIME_set_string_X509(t, x509_format_tests[idx].data);

    if (!TEST_int_eq(result, x509_format_tests[idx].expected)) {
        TEST_info("test_x509_time(%d) failed: expected %d, got %d\n",
                idx, x509_format_tests[idx].expected, result);
        goto out;
    }


    if (t != ((void*)0) && x509_format_tests[idx].expected_type != -1) {
        if (!TEST_int_eq(t->type, x509_format_tests[idx].expected_type)) {
            TEST_info("test_x509_time(%d) failed: expected_type %d, got %d\n",
                    idx, x509_format_tests[idx].expected_type, t->type);
            goto out;
        }
    }


    if (t != ((void*)0) && x509_format_tests[idx].expected_string) {
        if (!TEST_str_eq((const char *)t->data,
                    x509_format_tests[idx].expected_string)) {
            TEST_info("test_x509_time(%d) failed: expected_string %s, got %s\n",
                    idx, x509_format_tests[idx].expected_string, t->data);
            goto out;
        }
    }

    rv = 1;
out:
    if (t != ((void*)0))
        ASN1_TIME_free(t);
    return rv;
}
