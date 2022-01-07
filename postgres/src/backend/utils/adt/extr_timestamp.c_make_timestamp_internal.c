
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg_tm {int tm_year; int tm_mon; int tm_mday; } ;
typedef scalar_t__ Timestamp ;
typedef scalar_t__ TimeOffset ;


 int DTK_DATE_M ;
 int ERRCODE_DATETIME_FIELD_OVERFLOW ;
 int ERRCODE_DATETIME_VALUE_OUT_OF_RANGE ;
 int ERROR ;
 int HOURS_PER_DAY ;
 int IS_VALID_JULIAN (int,int,int) ;
 int IS_VALID_TIMESTAMP (scalar_t__) ;
 int MINS_PER_HOUR ;
 scalar_t__ POSTGRES_EPOCH_JDATE ;
 double SECS_PER_MINUTE ;
 scalar_t__ USECS_PER_DAY ;
 int USECS_PER_SEC ;
 int ValidateDate (int ,int,int,int,struct pg_tm*) ;
 scalar_t__ date2j (int,int,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int,int,int,...) ;
 scalar_t__ isnan (double) ;
 scalar_t__ rint (double) ;

__attribute__((used)) static Timestamp
make_timestamp_internal(int year, int month, int day,
      int hour, int min, double sec)
{
 struct pg_tm tm;
 TimeOffset date;
 TimeOffset time;
 int dterr;
 Timestamp result;

 tm.tm_year = year;
 tm.tm_mon = month;
 tm.tm_mday = day;





 dterr = ValidateDate(DTK_DATE_M, 0, 0, 0, &tm);

 if (dterr != 0)
  ereport(ERROR,
    (errcode(ERRCODE_DATETIME_FIELD_OVERFLOW),
     errmsg("date field value out of range: %d-%02d-%02d",
      year, month, day)));

 if (!IS_VALID_JULIAN(tm.tm_year, tm.tm_mon, tm.tm_mday))
  ereport(ERROR,
    (errcode(ERRCODE_DATETIME_VALUE_OUT_OF_RANGE),
     errmsg("date out of range: %d-%02d-%02d",
      year, month, day)));

 date = date2j(tm.tm_year, tm.tm_mon, tm.tm_mday) - POSTGRES_EPOCH_JDATE;







 if (hour < 0 || min < 0 || min > MINS_PER_HOUR - 1 ||
  isnan(sec) ||
  sec < 0 || sec > SECS_PER_MINUTE ||
  hour > HOURS_PER_DAY ||

  (hour == HOURS_PER_DAY && (min > 0 || sec > 0)))
  ereport(ERROR,
    (errcode(ERRCODE_DATETIME_FIELD_OVERFLOW),
     errmsg("time field value out of range: %d:%02d:%02g",
      hour, min, sec)));


 time = (((hour * MINS_PER_HOUR + min) * SECS_PER_MINUTE)
   * USECS_PER_SEC) + rint(sec * USECS_PER_SEC);

 result = date * USECS_PER_DAY + time;

 if ((result - time) / USECS_PER_DAY != date)
  ereport(ERROR,
    (errcode(ERRCODE_DATETIME_VALUE_OUT_OF_RANGE),
     errmsg("timestamp out of range: %d-%02d-%02d %d:%02d:%02g",
      year, month, day,
      hour, min, sec)));



 if ((result < 0 && date > 0) ||
  (result > 0 && date < -1))
  ereport(ERROR,
    (errcode(ERRCODE_DATETIME_VALUE_OUT_OF_RANGE),
     errmsg("timestamp out of range: %d-%02d-%02d %d:%02d:%02g",
      year, month, day,
      hour, min, sec)));


 if (!IS_VALID_TIMESTAMP(result))
  ereport(ERROR,
    (errcode(ERRCODE_DATETIME_VALUE_OUT_OF_RANGE),
     errmsg("timestamp out of range: %d-%02d-%02d %d:%02d:%02g",
      year, month, day,
      hour, min, sec)));

 return result;
}
