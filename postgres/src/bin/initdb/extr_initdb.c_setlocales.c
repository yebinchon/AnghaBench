
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LC_COLLATE ;
 int LC_CTYPE ;
 int LC_MESSAGES ;
 int LC_MONETARY ;
 int LC_NUMERIC ;
 int LC_TIME ;
 int check_locale_name (int ,char*,char**) ;
 char* lc_collate ;
 char* lc_ctype ;
 char* lc_messages ;
 char* lc_monetary ;
 char* lc_numeric ;
 char* lc_time ;
 char* locale ;

__attribute__((used)) static void
setlocales(void)
{
 char *canonname;



 if (locale)
 {
  if (!lc_ctype)
   lc_ctype = locale;
  if (!lc_collate)
   lc_collate = locale;
  if (!lc_numeric)
   lc_numeric = locale;
  if (!lc_time)
   lc_time = locale;
  if (!lc_monetary)
   lc_monetary = locale;
  if (!lc_messages)
   lc_messages = locale;
 }






 check_locale_name(LC_CTYPE, lc_ctype, &canonname);
 lc_ctype = canonname;
 check_locale_name(LC_COLLATE, lc_collate, &canonname);
 lc_collate = canonname;
 check_locale_name(LC_NUMERIC, lc_numeric, &canonname);
 lc_numeric = canonname;
 check_locale_name(LC_TIME, lc_time, &canonname);
 lc_time = canonname;
 check_locale_name(LC_MONETARY, lc_monetary, &canonname);
 lc_monetary = canonname;





 check_locale_name(LC_CTYPE, lc_messages, &canonname);
 lc_messages = canonname;

}
