
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tm {int tm_wday; int tm_yday; } ;
typedef int d ;
struct TYPE_2__ {int wd; int yd; int d; int m; int y; } ;
typedef int ASN1_TIME ;


 int ASN1_TIME_free (int *) ;
 int * ASN1_TIME_new () ;
 int ASN1_TIME_set_string (int *,char*) ;
 int ASN1_TIME_to_tm (int *,struct tm*) ;
 int BIO_snprintf (char*,int,char*,int ,int ,int ) ;
 scalar_t__ TEST_int_eq (int ,int ) ;
 int TEST_ptr (int *) ;
 scalar_t__ TEST_true (int ) ;
 TYPE_1__* day_of_week_tests ;

__attribute__((used)) static int test_days(int n)
{
    char d[16];
    ASN1_TIME *a = ((void*)0);
    struct tm t;
    int r;

    BIO_snprintf(d, sizeof(d), "%04d%02d%02d050505Z",
                 day_of_week_tests[n].y, day_of_week_tests[n].m,
                 day_of_week_tests[n].d);

    if (!TEST_ptr(a = ASN1_TIME_new()))
        return 0;

    r = TEST_true(ASN1_TIME_set_string(a, d))
        && TEST_true(ASN1_TIME_to_tm(a, &t))
        && TEST_int_eq(t.tm_yday, day_of_week_tests[n].yd)
        && TEST_int_eq(t.tm_wday, day_of_week_tests[n].wd);

    ASN1_TIME_free(a);
    return r;
}
