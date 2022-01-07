
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ int32 ;
typedef TYPE_1__* TupleDesc ;
struct TYPE_8__ {scalar_t__ atttypid; scalar_t__ atttypmod; scalar_t__ attnum; int attname; scalar_t__ attisdropped; } ;
struct TYPE_7__ {int natts; int tdtypeid; } ;
typedef scalar_t__ Oid ;
typedef TYPE_2__* Form_pg_attribute ;
typedef scalar_t__ AttrNumber ;


 int ERRCODE_DATATYPE_MISMATCH ;
 int ERROR ;
 char* NameStr (int ) ;
 TYPE_2__* TupleDescAttr (TYPE_1__*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,char*,int ,int ) ;
 int errmsg (char*) ;
 int format_type_be (int ) ;
 scalar_t__ palloc0 (int) ;
 scalar_t__ strcmp (char*,char*) ;

AttrNumber *
convert_tuples_by_name_map(TupleDesc indesc,
         TupleDesc outdesc)
{
 AttrNumber *attrMap;
 int outnatts;
 int innatts;
 int i;
 int nextindesc = -1;

 outnatts = outdesc->natts;
 innatts = indesc->natts;

 attrMap = (AttrNumber *) palloc0(outnatts * sizeof(AttrNumber));
 for (i = 0; i < outnatts; i++)
 {
  Form_pg_attribute outatt = TupleDescAttr(outdesc, i);
  char *attname;
  Oid atttypid;
  int32 atttypmod;
  int j;

  if (outatt->attisdropped)
   continue;
  attname = NameStr(outatt->attname);
  atttypid = outatt->atttypid;
  atttypmod = outatt->atttypmod;
  for (j = 0; j < innatts; j++)
  {
   Form_pg_attribute inatt;

   nextindesc++;
   if (nextindesc >= innatts)
    nextindesc = 0;

   inatt = TupleDescAttr(indesc, nextindesc);
   if (inatt->attisdropped)
    continue;
   if (strcmp(attname, NameStr(inatt->attname)) == 0)
   {

    if (atttypid != inatt->atttypid || atttypmod != inatt->atttypmod)
     ereport(ERROR,
       (errcode(ERRCODE_DATATYPE_MISMATCH),
        errmsg("could not convert row type"),
        errdetail("Attribute \"%s\" of type %s does not match corresponding attribute of type %s.",
            attname,
            format_type_be(outdesc->tdtypeid),
            format_type_be(indesc->tdtypeid))));
    attrMap[i] = inatt->attnum;
    break;
   }
  }
  if (attrMap[i] == 0)
   ereport(ERROR,
     (errcode(ERRCODE_DATATYPE_MISMATCH),
      errmsg("could not convert row type"),
      errdetail("Attribute \"%s\" of type %s does not exist in type %s.",
          attname,
          format_type_be(outdesc->tdtypeid),
          format_type_be(indesc->tdtypeid))));
 }
 return attrMap;
}
