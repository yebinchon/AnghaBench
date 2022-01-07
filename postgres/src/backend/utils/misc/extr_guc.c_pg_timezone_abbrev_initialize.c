
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PGC_POSTMASTER ;
 int PGC_S_DYNAMIC_DEFAULT ;
 int SetConfigOption (char*,char*,int ,int ) ;

__attribute__((used)) static void
pg_timezone_abbrev_initialize(void)
{
 SetConfigOption("timezone_abbreviations", "Default",
     PGC_POSTMASTER, PGC_S_DYNAMIC_DEFAULT);
}
