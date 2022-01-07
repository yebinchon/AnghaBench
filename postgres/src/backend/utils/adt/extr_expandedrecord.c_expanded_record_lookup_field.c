
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* TupleDesc ;
struct TYPE_13__ {int fcollation; int ftypmod; int ftypeid; int fnumber; } ;
struct TYPE_12__ {int attcollation; int atttypmod; int atttypid; int attnum; } ;
struct TYPE_11__ {int attcollation; int atttypmod; int atttypid; int attnum; int attisdropped; int attname; } ;
struct TYPE_10__ {int natts; } ;
typedef TYPE_2__* Form_pg_attribute ;
typedef TYPE_3__ FormData_pg_attribute ;
typedef int ExpandedRecordHeader ;
typedef TYPE_4__ ExpandedRecordFieldInfo ;


 TYPE_3__* SystemAttributeByName (char const*) ;
 TYPE_2__* TupleDescAttr (TYPE_1__*,int) ;
 TYPE_1__* expanded_record_get_tupdesc (int *) ;
 scalar_t__ namestrcmp (int *,char const*) ;

bool
expanded_record_lookup_field(ExpandedRecordHeader *erh, const char *fieldname,
        ExpandedRecordFieldInfo *finfo)
{
 TupleDesc tupdesc;
 int fno;
 Form_pg_attribute attr;
 const FormData_pg_attribute *sysattr;

 tupdesc = expanded_record_get_tupdesc(erh);


 for (fno = 0; fno < tupdesc->natts; fno++)
 {
  attr = TupleDescAttr(tupdesc, fno);
  if (namestrcmp(&attr->attname, fieldname) == 0 &&
   !attr->attisdropped)
  {
   finfo->fnumber = attr->attnum;
   finfo->ftypeid = attr->atttypid;
   finfo->ftypmod = attr->atttypmod;
   finfo->fcollation = attr->attcollation;
   return 1;
  }
 }


 sysattr = SystemAttributeByName(fieldname);
 if (sysattr != ((void*)0))
 {
  finfo->fnumber = sysattr->attnum;
  finfo->ftypeid = sysattr->atttypid;
  finfo->ftypmod = sysattr->atttypmod;
  finfo->fcollation = sysattr->attcollation;
  return 1;
 }

 return 0;
}
