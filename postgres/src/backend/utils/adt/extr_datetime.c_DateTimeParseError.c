
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_DATETIME_FIELD_OVERFLOW ;
 int ERRCODE_INTERVAL_FIELD_OVERFLOW ;
 int ERRCODE_INVALID_DATETIME_FORMAT ;
 int ERRCODE_INVALID_TIME_ZONE_DISPLACEMENT_VALUE ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,char const*,...) ;

void
DateTimeParseError(int dterr, const char *str, const char *datatype)
{
 switch (dterr)
 {
  case 131:
   ereport(ERROR,
     (errcode(ERRCODE_DATETIME_FIELD_OVERFLOW),
      errmsg("date/time field value out of range: \"%s\"",
       str)));
   break;
  case 129:

   ereport(ERROR,
     (errcode(ERRCODE_DATETIME_FIELD_OVERFLOW),
      errmsg("date/time field value out of range: \"%s\"",
       str),
      errhint("Perhaps you need a different \"datestyle\" setting.")));
   break;
  case 130:
   ereport(ERROR,
     (errcode(ERRCODE_INTERVAL_FIELD_OVERFLOW),
      errmsg("interval field value out of range: \"%s\"",
       str)));
   break;
  case 128:
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_TIME_ZONE_DISPLACEMENT_VALUE),
      errmsg("time zone displacement out of range: \"%s\"",
       str)));
   break;
  case 132:
  default:
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_DATETIME_FORMAT),
      errmsg("invalid input syntax for type %s: \"%s\"",
       datatype, str)));
   break;
 }
}
