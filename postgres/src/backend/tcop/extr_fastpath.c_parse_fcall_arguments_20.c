
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int fn_nargs; } ;
struct fp_info {int * argtypes; TYPE_1__ flinfo; } ;
typedef int int16 ;
struct TYPE_13__ {int nargs; TYPE_2__* args; } ;
struct TYPE_12__ {scalar_t__ cursor; scalar_t__ len; } ;
struct TYPE_11__ {int isnull; void* value; } ;
typedef TYPE_3__ StringInfoData ;
typedef int StringInfo ;
typedef int Oid ;
typedef TYPE_4__* FunctionCallInfo ;


 int ERRCODE_INVALID_BINARY_REPRESENTATION ;
 int ERRCODE_PROTOCOL_VIOLATION ;
 int ERROR ;
 int FUNC_MAX_ARGS ;
 void* OidReceiveFunctionCall (int ,TYPE_3__*,int ,int) ;
 int appendBinaryStringInfo (TYPE_3__*,int ,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int,...) ;
 int getTypeBinaryInputInfo (int ,int *,int *) ;
 int initStringInfo (TYPE_3__*) ;
 int pq_getmsgbytes (int ,int) ;
 int pq_getmsgint (int ,int) ;
 int resetStringInfo (TYPE_3__*) ;

__attribute__((used)) static int16
parse_fcall_arguments_20(StringInfo msgBuf, struct fp_info *fip,
       FunctionCallInfo fcinfo)
{
 int nargs;
 int i;
 StringInfoData abuf;

 nargs = pq_getmsgint(msgBuf, 4);

 if (fip->flinfo.fn_nargs != nargs || nargs > FUNC_MAX_ARGS)
  ereport(ERROR,
    (errcode(ERRCODE_PROTOCOL_VIOLATION),
     errmsg("function call message contains %d arguments but function requires %d",
      nargs, fip->flinfo.fn_nargs)));

 fcinfo->nargs = nargs;

 initStringInfo(&abuf);
 for (i = 0; i < nargs; ++i)
 {
  int argsize;
  Oid typreceive;
  Oid typioparam;

  getTypeBinaryInputInfo(fip->argtypes[i], &typreceive, &typioparam);

  argsize = pq_getmsgint(msgBuf, 4);
  if (argsize == -1)
  {
   fcinfo->args[i].isnull = 1;
   fcinfo->args[i].value = OidReceiveFunctionCall(typreceive, ((void*)0),
                 typioparam, -1);
   continue;
  }
  fcinfo->args[i].isnull = 0;
  if (argsize < 0)
   ereport(ERROR,
     (errcode(ERRCODE_PROTOCOL_VIOLATION),
      errmsg("invalid argument size %d in function call message",
       argsize)));


  resetStringInfo(&abuf);
  appendBinaryStringInfo(&abuf,
          pq_getmsgbytes(msgBuf, argsize),
          argsize);

  fcinfo->args[i].value = OidReceiveFunctionCall(typreceive, &abuf,
                typioparam, -1);


  if (abuf.cursor != abuf.len)
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_BINARY_REPRESENTATION),
      errmsg("incorrect binary data format in function argument %d",
       i + 1)));
 }


 return 1;
}
