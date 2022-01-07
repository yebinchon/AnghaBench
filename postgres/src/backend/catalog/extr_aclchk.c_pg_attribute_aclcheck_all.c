
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ attisdropped; } ;
struct TYPE_3__ {int relnatts; } ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_class ;
typedef TYPE_2__* Form_pg_attribute ;
typedef int AttrNumber ;
typedef int AclResult ;
typedef scalar_t__ AclMode ;
typedef scalar_t__ AclMaskHow ;


 int ACLCHECK_NO_PRIV ;
 int ACLCHECK_OK ;
 scalar_t__ ACLMASK_ALL ;
 scalar_t__ ACLMASK_ANY ;
 int ATTNUM ;
 int Anum_pg_attribute_attacl ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 int Int16GetDatum (int) ;
 int ObjectIdGetDatum (int ) ;
 int RELOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int SearchSysCache2 (int ,int ,int ) ;
 scalar_t__ heap_attisnull (int ,int ,int *) ;
 scalar_t__ pg_attribute_aclmask (int ,int,int ,scalar_t__,scalar_t__) ;

AclResult
pg_attribute_aclcheck_all(Oid table_oid, Oid roleid, AclMode mode,
        AclMaskHow how)
{
 AclResult result;
 HeapTuple classTuple;
 Form_pg_class classForm;
 AttrNumber nattrs;
 AttrNumber curr_att;






 classTuple = SearchSysCache1(RELOID, ObjectIdGetDatum(table_oid));
 if (!HeapTupleIsValid(classTuple))
  return ACLCHECK_NO_PRIV;
 classForm = (Form_pg_class) GETSTRUCT(classTuple);

 nattrs = classForm->relnatts;

 ReleaseSysCache(classTuple);





 result = ACLCHECK_NO_PRIV;

 for (curr_att = 1; curr_att <= nattrs; curr_att++)
 {
  HeapTuple attTuple;
  AclMode attmask;

  attTuple = SearchSysCache2(ATTNUM,
           ObjectIdGetDatum(table_oid),
           Int16GetDatum(curr_att));
  if (!HeapTupleIsValid(attTuple))
   continue;


  if (((Form_pg_attribute) GETSTRUCT(attTuple))->attisdropped)
  {
   ReleaseSysCache(attTuple);
   continue;
  }






  if (heap_attisnull(attTuple, Anum_pg_attribute_attacl, ((void*)0)))
   attmask = 0;
  else
   attmask = pg_attribute_aclmask(table_oid, curr_att, roleid,
             mode, ACLMASK_ANY);

  ReleaseSysCache(attTuple);

  if (attmask != 0)
  {
   result = ACLCHECK_OK;
   if (how == ACLMASK_ANY)
    break;
  }
  else
  {
   result = ACLCHECK_NO_PRIV;
   if (how == ACLMASK_ALL)
    break;
  }
 }

 return result;
}
