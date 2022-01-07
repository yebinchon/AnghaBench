
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int ERRCODE_INDETERMINATE_COLLATION ;
 int ERROR ;
 int OidIsValid (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;

__attribute__((used)) static void
check_collation_set(Oid collid)
{
 if (!OidIsValid(collid))
 {




  ereport(ERROR,
    (errcode(ERRCODE_INDETERMINATE_COLLATION),
     errmsg("could not determine which collation to use for string comparison"),
     errhint("Use the COLLATE clause to set the collation explicitly.")));
 }
}
