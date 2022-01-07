
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int expected; scalar_t__ input; } ;
typedef TYPE_1__ TESTDATA ;
typedef int MDC2_CTX ;


 int MDC2_DIGEST_LENGTH ;
 int MDC2_Final (unsigned char*,int *) ;
 int MDC2_Init (int *) ;
 int MDC2_Update (int *,unsigned char const*,int ) ;
 int TEST_info (char*,int) ;
 int TEST_mem_eq (int ,int,unsigned char*,int) ;
 int strlen (scalar_t__) ;
 TYPE_1__* tests ;

__attribute__((used)) static int test_mdc2(int idx)
{
    unsigned char md[MDC2_DIGEST_LENGTH];
    MDC2_CTX c;
    const TESTDATA testdata = tests[idx];

    MDC2_Init(&c);
    MDC2_Update(&c, (const unsigned char *)testdata.input,
                strlen(testdata.input));
    MDC2_Final(&(md[0]), &c);

    if (!TEST_mem_eq(testdata.expected, MDC2_DIGEST_LENGTH,
                     md, MDC2_DIGEST_LENGTH)) {
        TEST_info("mdc2 test %d: unexpected output", idx);
        return 0;
    }

    return 1;
}
