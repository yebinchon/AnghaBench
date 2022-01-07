
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 int BIO_printf (int ,char*,scalar_t__,scalar_t__) ;
 scalar_t__ CONSTTIME_FALSE_64 ;
 scalar_t__ CONSTTIME_TRUE_64 ;
 int TEST_error (char*,char const*) ;
 int bio_err ;

__attribute__((used)) static int test_binary_op_64(uint64_t (*op)(uint64_t a, uint64_t b),
                             const char *op_name, uint64_t a, uint64_t b,
                             int is_true)
{
    uint64_t c = op(a, b);

    if (is_true && c != CONSTTIME_TRUE_64) {
        TEST_error("TRUE %s op failed", op_name);
        BIO_printf(bio_err, "a=%jx b=%jx\n", a, b);
        return 0;
    } else if (!is_true && c != CONSTTIME_FALSE_64) {
        TEST_error("FALSE %s op failed", op_name);
        BIO_printf(bio_err, "a=%jx b=%jx\n", a, b);
        return 0;
    }
    return 1;
}
