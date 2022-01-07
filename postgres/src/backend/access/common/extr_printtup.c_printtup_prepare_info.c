
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int int16 ;
typedef int TupleDesc ;
struct TYPE_11__ {int nattrs; TYPE_2__* myinfo; int attrinfo; TYPE_1__* portal; } ;
struct TYPE_10__ {int atttypid; } ;
struct TYPE_9__ {int format; int finfo; int typsend; int typisvarlena; int typoutput; } ;
struct TYPE_8__ {int* formats; } ;
typedef TYPE_2__ PrinttupAttrInfo ;
typedef TYPE_3__* Form_pg_attribute ;
typedef TYPE_4__ DR_printtup ;


 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 TYPE_3__* TupleDescAttr (int ,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int) ;
 int fmgr_info (int ,int *) ;
 int getTypeBinaryOutputInfo (int ,int *,int *) ;
 int getTypeOutputInfo (int ,int *,int *) ;
 scalar_t__ palloc0 (int) ;
 int pfree (TYPE_2__*) ;

__attribute__((used)) static void
printtup_prepare_info(DR_printtup *myState, TupleDesc typeinfo, int numAttrs)
{
 int16 *formats = myState->portal->formats;
 int i;


 if (myState->myinfo)
  pfree(myState->myinfo);
 myState->myinfo = ((void*)0);

 myState->attrinfo = typeinfo;
 myState->nattrs = numAttrs;
 if (numAttrs <= 0)
  return;

 myState->myinfo = (PrinttupAttrInfo *)
  palloc0(numAttrs * sizeof(PrinttupAttrInfo));

 for (i = 0; i < numAttrs; i++)
 {
  PrinttupAttrInfo *thisState = myState->myinfo + i;
  int16 format = (formats ? formats[i] : 0);
  Form_pg_attribute attr = TupleDescAttr(typeinfo, i);

  thisState->format = format;
  if (format == 0)
  {
   getTypeOutputInfo(attr->atttypid,
         &thisState->typoutput,
         &thisState->typisvarlena);
   fmgr_info(thisState->typoutput, &thisState->finfo);
  }
  else if (format == 1)
  {
   getTypeBinaryOutputInfo(attr->atttypid,
         &thisState->typsend,
         &thisState->typisvarlena);
   fmgr_info(thisState->typsend, &thisState->finfo);
  }
  else
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("unsupported format code: %d", format)));
 }
}
