
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ GucSource ;


 int ERRCODE_UNDEFINED_OBJECT ;
 int GUC_check_errdetail (char*,char*,...) ;
 scalar_t__ InvalidOid ;
 scalar_t__ IsTransactionState () ;
 scalar_t__ MyDatabaseId ;
 scalar_t__ NAMEDATALEN ;
 int NOTICE ;
 int OidIsValid (int ) ;
 scalar_t__ PGC_S_TEST ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*) ;
 int get_table_am_oid (char*,int) ;
 scalar_t__ strlen (char*) ;

bool
check_default_table_access_method(char **newval, void **extra, GucSource source)
{
 if (**newval == '\0')
 {
  GUC_check_errdetail("%s cannot be empty.",
       "default_table_access_method");
  return 0;
 }

 if (strlen(*newval) >= NAMEDATALEN)
 {
  GUC_check_errdetail("%s is too long (maximum %d characters).",
       "default_table_access_method", NAMEDATALEN - 1);
  return 0;
 }






 if (IsTransactionState() && MyDatabaseId != InvalidOid)
 {
  if (!OidIsValid(get_table_am_oid(*newval, 1)))
  {





   if (source == PGC_S_TEST)
   {
    ereport(NOTICE,
      (errcode(ERRCODE_UNDEFINED_OBJECT),
       errmsg("table access method \"%s\" does not exist",
        *newval)));
   }
   else
   {
    GUC_check_errdetail("Table access method \"%s\" does not exist.",
         *newval);
    return 0;
   }
  }
 }

 return 1;
}
