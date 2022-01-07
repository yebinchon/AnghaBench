
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int t ;
struct TYPE_6__ {int expected; int cmp_time; scalar_t__ data; int type; } ;
struct TYPE_5__ {unsigned char* data; scalar_t__ flags; int length; int type; } ;
typedef TYPE_1__ ASN1_TIME ;


 int TEST_info (char*,int,int ,int) ;
 int TEST_int_eq (int,int ) ;
 int X509_cmp_time (TYPE_1__*,int *) ;
 int memset (TYPE_1__*,int ,int) ;
 int strlen (scalar_t__) ;
 TYPE_2__* x509_cmp_tests ;

__attribute__((used)) static int test_x509_cmp_time(int idx)
{
    ASN1_TIME t;
    int result;

    memset(&t, 0, sizeof(t));
    t.type = x509_cmp_tests[idx].type;
    t.data = (unsigned char*)(x509_cmp_tests[idx].data);
    t.length = strlen(x509_cmp_tests[idx].data);
    t.flags = 0;

    result = X509_cmp_time(&t, &x509_cmp_tests[idx].cmp_time);
    if (!TEST_int_eq(result, x509_cmp_tests[idx].expected)) {
        TEST_info("test_x509_cmp_time(%d) failed: expected %d, got %d\n",
                idx, x509_cmp_tests[idx].expected, result);
        return 0;
    }
    return 1;
}
