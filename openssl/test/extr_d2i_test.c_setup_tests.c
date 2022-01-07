
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* member_0; scalar_t__ code; int str; int member_1; } ;
typedef TYPE_1__ error_enum ;
struct TYPE_6__ {int sname; } ;
typedef TYPE_2__ ASN1_ITEM ;


 int ADD_TEST (int ) ;




 TYPE_2__* ASN1_ITEM_get (size_t) ;
 int * ASN1_ITEM_lookup (char const*) ;

 scalar_t__ ASN1_UNKNOWN ;
 size_t OSSL_NELEM (TYPE_1__*) ;
 int TEST_error (char*,char const*) ;
 int TEST_note (char*,...) ;
 int TEST_ptr (char const*) ;
 scalar_t__ expected_error ;
 int * item_type ;
 scalar_t__ strcmp (int ,char const*) ;
 int test_bad_asn1 ;
 char const* test_file ;
 char* test_get_argument (int) ;

int setup_tests(void)
{
    const char *test_type_name;
    const char *expected_error_string;

    size_t i;

    static error_enum expected_errors[] = {
        {"OK", 128},
        {"BIO", 132},
        {"decode", 130},
        {"encode", 129},
        {"compare", 131}
    };

    if (!TEST_ptr(test_type_name = test_get_argument(0))
            || !TEST_ptr(expected_error_string = test_get_argument(1))
            || !TEST_ptr(test_file = test_get_argument(2)))
        return 0;

    item_type = ASN1_ITEM_lookup(test_type_name);

    if (item_type == ((void*)0)) {
        TEST_error("Unknown type %s", test_type_name);
        TEST_note("Supported types:");
        for (i = 0;; i++) {
            const ASN1_ITEM *it = ASN1_ITEM_get(i);

            if (it == ((void*)0))
                break;
            TEST_note("\t%s", it->sname);
        }
        return 0;
    }

    for (i = 0; i < OSSL_NELEM(expected_errors); i++) {
        if (strcmp(expected_errors[i].str, expected_error_string) == 0) {
            expected_error = expected_errors[i].code;
            break;
        }
    }

    if (expected_error == ASN1_UNKNOWN) {
        TEST_error("Unknown expected error %s\n", expected_error_string);
        return 0;
    }

    ADD_TEST(test_bad_asn1);
    return 1;
}
