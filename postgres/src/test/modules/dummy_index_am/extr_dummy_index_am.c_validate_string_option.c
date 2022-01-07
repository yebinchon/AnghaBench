
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NOTICE ;
 int ereport (int ,int ) ;
 int errmsg (char*,char const*) ;

__attribute__((used)) static void
validate_string_option(const char *value)
{
 ereport(NOTICE,
   (errmsg("new option value for string parameter %s",
     value ? value : "NULL")));
}
