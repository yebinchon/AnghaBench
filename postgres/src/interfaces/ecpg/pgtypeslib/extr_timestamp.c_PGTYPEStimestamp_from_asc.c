
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp ;
struct tm {int dummy; } ;
typedef int int64 ;
typedef int fsec_t ;






 scalar_t__ DecodeDateTime (char**,int*,int,int*,struct tm*,int *,int ) ;
 int MAXDATEFIELDS ;
 int MAXDATELEN ;
 scalar_t__ PGTYPES_TS_BAD_TIMESTAMP ;
 scalar_t__ ParseDateTime (char*,char*,char**,int*,int*,char**) ;
 int SetEpochTimestamp () ;
 int TIMESTAMP_NOBEGIN (int ) ;
 int TIMESTAMP_NOEND (int ) ;
 scalar_t__ errno ;
 int strlen (char*) ;
 int tm2timestamp (struct tm*,int ,int *,int *) ;

timestamp
PGTYPEStimestamp_from_asc(char *str, char **endptr)
{
 timestamp result;
 int64 noresult = 0;
 fsec_t fsec;
 struct tm tt,
      *tm = &tt;
 int dtype;
 int nf;
 char *field[MAXDATEFIELDS];
 int ftype[MAXDATEFIELDS];
 char lowstr[MAXDATELEN + MAXDATEFIELDS];
 char *realptr;
 char **ptr = (endptr != ((void*)0)) ? endptr : &realptr;

 if (strlen(str) > MAXDATELEN)
 {
  errno = PGTYPES_TS_BAD_TIMESTAMP;
  return noresult;
 }

 if (ParseDateTime(str, lowstr, field, ftype, &nf, ptr) != 0 ||
  DecodeDateTime(field, ftype, nf, &dtype, tm, &fsec, 0) != 0)
 {
  errno = PGTYPES_TS_BAD_TIMESTAMP;
  return noresult;
 }

 switch (dtype)
 {
  case 131:
   if (tm2timestamp(tm, fsec, ((void*)0), &result) != 0)
   {
    errno = PGTYPES_TS_BAD_TIMESTAMP;
    return noresult;
   }
   break;

  case 129:
   result = SetEpochTimestamp();
   break;

  case 128:
   TIMESTAMP_NOEND(result);
   break;

  case 130:
   TIMESTAMP_NOBEGIN(result);
   break;

  default:
   errno = PGTYPES_TS_BAD_TIMESTAMP;
   return noresult;
 }







 errno = 0;
 return result;
}
