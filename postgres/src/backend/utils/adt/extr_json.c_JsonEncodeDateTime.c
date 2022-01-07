
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pg_tm {int tm_isdst; int tm_mday; int tm_mon; int tm_year; } ;
typedef int fsec_t ;
typedef int TimestampTz ;
typedef int Timestamp ;
typedef int TimeTzADT ;
typedef int TimeADT ;
typedef int Oid ;
typedef int Datum ;
typedef scalar_t__ DateADT ;



 int DATE_NOT_FINITE (scalar_t__) ;
 scalar_t__ DatumGetDateADT (int ) ;
 int DatumGetTimeADT (int ) ;
 int * DatumGetTimeTzADTP (int ) ;
 int DatumGetTimestamp (int ) ;
 int DatumGetTimestampTz (int ) ;
 int ERRCODE_DATETIME_VALUE_OUT_OF_RANGE ;
 int ERROR ;
 int EncodeDateOnly (struct pg_tm*,int ,char*) ;
 int EncodeDateTime (struct pg_tm*,int ,int,int,char const*,int ,char*) ;
 int EncodeSpecialDate (scalar_t__,char*) ;
 int EncodeSpecialTimestamp (int,char*) ;
 int EncodeTimeOnly (struct pg_tm*,int ,int,int,int ,char*) ;
 scalar_t__ MAXDATELEN ;
 scalar_t__ POSTGRES_EPOCH_JDATE ;



 int TIMESTAMP_NOT_FINITE (int) ;

 int USECS_PER_SEC ;
 int USE_XSD_DATES ;
 int elog (int ,char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int j2date (scalar_t__,int *,int *,int *) ;
 char* palloc (scalar_t__) ;
 int time2tm (int ,struct pg_tm*,int *) ;
 int timestamp2tm (int,int*,struct pg_tm*,int *,char const**,int *) ;
 int timetz2tm (int *,struct pg_tm*,int *,int*) ;

char *
JsonEncodeDateTime(char *buf, Datum value, Oid typid, const int *tzp)
{
 if (!buf)
  buf = palloc(MAXDATELEN + 1);

 switch (typid)
 {
  case 132:
   {
    DateADT date;
    struct pg_tm tm;

    date = DatumGetDateADT(value);


    if (DATE_NOT_FINITE(date))
     EncodeSpecialDate(date, buf);
    else
    {
     j2date(date + POSTGRES_EPOCH_JDATE,
         &(tm.tm_year), &(tm.tm_mon), &(tm.tm_mday));
     EncodeDateOnly(&tm, USE_XSD_DATES, buf);
    }
   }
   break;
  case 131:
   {
    TimeADT time = DatumGetTimeADT(value);
    struct pg_tm tt,
         *tm = &tt;
    fsec_t fsec;


    time2tm(time, tm, &fsec);
    EncodeTimeOnly(tm, fsec, 0, 0, USE_XSD_DATES, buf);
   }
   break;
  case 128:
   {
    TimeTzADT *time = DatumGetTimeTzADTP(value);
    struct pg_tm tt,
         *tm = &tt;
    fsec_t fsec;
    int tz;


    timetz2tm(time, tm, &fsec, &tz);
    EncodeTimeOnly(tm, fsec, 1, tz, USE_XSD_DATES, buf);
   }
   break;
  case 130:
   {
    Timestamp timestamp;
    struct pg_tm tm;
    fsec_t fsec;

    timestamp = DatumGetTimestamp(value);

    if (TIMESTAMP_NOT_FINITE(timestamp))
     EncodeSpecialTimestamp(timestamp, buf);
    else if (timestamp2tm(timestamp, ((void*)0), &tm, &fsec, ((void*)0), ((void*)0)) == 0)
     EncodeDateTime(&tm, fsec, 0, 0, ((void*)0), USE_XSD_DATES, buf);
    else
     ereport(ERROR,
       (errcode(ERRCODE_DATETIME_VALUE_OUT_OF_RANGE),
        errmsg("timestamp out of range")));
   }
   break;
  case 129:
   {
    TimestampTz timestamp;
    struct pg_tm tm;
    int tz;
    fsec_t fsec;
    const char *tzn = ((void*)0);

    timestamp = DatumGetTimestampTz(value);







    if (tzp)
    {
     tz = *tzp;
     timestamp -= (TimestampTz) tz * USECS_PER_SEC;
    }


    if (TIMESTAMP_NOT_FINITE(timestamp))
     EncodeSpecialTimestamp(timestamp, buf);
    else if (timestamp2tm(timestamp, tzp ? ((void*)0) : &tz, &tm, &fsec,
           tzp ? ((void*)0) : &tzn, ((void*)0)) == 0)
    {
     if (tzp)
      tm.tm_isdst = 1;

     EncodeDateTime(&tm, fsec, 1, tz, tzn, USE_XSD_DATES, buf);
    }
    else
     ereport(ERROR,
       (errcode(ERRCODE_DATETIME_VALUE_OUT_OF_RANGE),
        errmsg("timestamp out of range")));
   }
   break;
  default:
   elog(ERROR, "unknown jsonb value datetime type oid %d", typid);
   return ((void*)0);
 }

 return buf;
}
