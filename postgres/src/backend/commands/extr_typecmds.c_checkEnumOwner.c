
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ typtype; int oid; } ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_type ;


 int ACLCHECK_NOT_OWNER ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 int GETSTRUCT (int ) ;
 int GetUserId () ;
 scalar_t__ TYPTYPE_ENUM ;
 int aclcheck_error_type (int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ) ;
 int format_type_be (int ) ;
 int pg_type_ownercheck (int ,int ) ;

__attribute__((used)) static void
checkEnumOwner(HeapTuple tup)
{
 Form_pg_type typTup = (Form_pg_type) GETSTRUCT(tup);


 if (typTup->typtype != TYPTYPE_ENUM)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("%s is not an enum",
      format_type_be(typTup->oid))));


 if (!pg_type_ownercheck(typTup->oid, GetUserId()))
  aclcheck_error_type(ACLCHECK_NOT_OWNER, typTup->oid);
}
