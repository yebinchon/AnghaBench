
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int pg_tz ;
struct TYPE_6__ {scalar_t__ type; scalar_t__ value; int token; } ;
typedef TYPE_1__ datetkn ;
struct TYPE_7__ {scalar_t__ tblsize; } ;
typedef TYPE_2__ TimeZoneAbbrevTable ;
struct TYPE_8__ {int * tz; int zone; } ;
typedef TYPE_3__ DynamicZoneAbbrev ;


 int Assert (int) ;
 scalar_t__ DYNTZ ;
 int ERRCODE_CONFIG_FILE_ERROR ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,int ) ;
 int errmsg (char*,int ) ;
 int * pg_tzset (int ) ;

__attribute__((used)) static pg_tz *
FetchDynamicTimeZone(TimeZoneAbbrevTable *tbl, const datetkn *tp)
{
 DynamicZoneAbbrev *dtza;


 Assert(tp->type == DYNTZ);
 Assert(tp->value > 0 && tp->value < tbl->tblsize);

 dtza = (DynamicZoneAbbrev *) ((char *) tbl + tp->value);


 if (dtza->tz == ((void*)0))
 {
  dtza->tz = pg_tzset(dtza->zone);





  if (dtza->tz == ((void*)0))
   ereport(ERROR,
     (errcode(ERRCODE_CONFIG_FILE_ERROR),
      errmsg("time zone \"%s\" not recognized",
       dtza->zone),
      errdetail("This time zone name appears in the configuration file for time zone abbreviation \"%s\".",
          tp->token)));
 }
 return dtza->tz;
}
