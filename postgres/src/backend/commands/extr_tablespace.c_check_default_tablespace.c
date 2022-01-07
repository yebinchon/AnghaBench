
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ GucSource ;


 int ERRCODE_UNDEFINED_OBJECT ;
 int GUC_check_errdetail (char*,char*) ;
 scalar_t__ InvalidOid ;
 scalar_t__ IsTransactionState () ;
 scalar_t__ MyDatabaseId ;
 int NOTICE ;
 int OidIsValid (int ) ;
 scalar_t__ PGC_S_TEST ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*) ;
 int get_tablespace_oid (char*,int) ;

bool
check_default_tablespace(char **newval, void **extra, GucSource source)
{





 if (IsTransactionState() && MyDatabaseId != InvalidOid)
 {
  if (**newval != '\0' &&
   !OidIsValid(get_tablespace_oid(*newval, 1)))
  {




   if (source == PGC_S_TEST)
   {
    ereport(NOTICE,
      (errcode(ERRCODE_UNDEFINED_OBJECT),
       errmsg("tablespace \"%s\" does not exist",
        *newval)));
   }
   else
   {
    GUC_check_errdetail("Tablespace \"%s\" does not exist.",
         *newval);
    return 0;
   }
  }
 }

 return 1;
}
