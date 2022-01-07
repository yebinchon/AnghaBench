
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int BIO_snprintf (char*,int,char*,int) ;
 int TEST_int_eq (int ,int) ;
 scalar_t__ ULONG_MAX ;

__attribute__((used)) static int test_big(void)
{
    char buf[80];


    if (!TEST_int_eq(BIO_snprintf(buf, sizeof(buf),
                                  "%f\n", 2 * (double)ULONG_MAX), -1))
        return 0;
    return 1;
}
