
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct tm {int tm_sec; int tm_min; int tm_hour; int tm_mday; int tm_mon; int tm_year; } ;


 int OPENSSL_gmtime (scalar_t__*,struct tm*) ;
 int OPENSSL_gmtime_adj (struct tm*,int ,long) ;
 int OPENSSL_gmtime_diff (int*,int*,struct tm*,struct tm*) ;
 long SECS_PER_DAY ;
 int TEST_int_eq (int ,int ) ;
 int TEST_long_eq (long,long) ;
 int TEST_true (int ) ;
 int time (scalar_t__*) ;

__attribute__((used)) static int check_time(long offset)
{
    struct tm tm1, tm2, o1;
    int off_day, off_sec;
    long toffset;
    time_t t1, t2;

    time(&t1);

    t2 = t1 + offset;
    OPENSSL_gmtime(&t2, &tm2);
    OPENSSL_gmtime(&t1, &tm1);
    o1 = tm1;
    OPENSSL_gmtime_adj(&tm1, 0, offset);
    if (!TEST_int_eq(tm1.tm_year, tm2.tm_year)
        || !TEST_int_eq(tm1.tm_mon, tm2.tm_mon)
        || !TEST_int_eq(tm1.tm_mday, tm2.tm_mday)
        || !TEST_int_eq(tm1.tm_hour, tm2.tm_hour)
        || !TEST_int_eq(tm1.tm_min, tm2.tm_min)
        || !TEST_int_eq(tm1.tm_sec, tm2.tm_sec)
        || !TEST_true(OPENSSL_gmtime_diff(&off_day, &off_sec, &o1, &tm1)))
        return 0;
    toffset = (long)off_day * SECS_PER_DAY + off_sec;
    if (!TEST_long_eq(offset, toffset))
        return 0;
    return 1;
}
