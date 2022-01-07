
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int fn_nargs; } ;
struct fp_info {int * argtypes; TYPE_1__ flinfo; } ;
typedef int int16 ;
struct TYPE_17__ {int nargs; TYPE_2__* args; } ;
struct TYPE_16__ {char* data; scalar_t__ cursor; scalar_t__ len; } ;
struct TYPE_15__ {int isnull; int value; } ;
typedef TYPE_3__ StringInfoData ;
typedef TYPE_3__* StringInfo ;
typedef int Oid ;
typedef TYPE_5__* FunctionCallInfo ;


 int ERRCODE_INVALID_BINARY_REPRESENTATION ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERRCODE_PROTOCOL_VIOLATION ;
 int ERROR ;
 int FUNC_MAX_ARGS ;
 int OidInputFunctionCall (int ,char*,int ,int) ;
 int OidReceiveFunctionCall (int ,TYPE_3__*,int ,int) ;
 int appendBinaryStringInfo (TYPE_3__*,int ,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int,...) ;
 int getTypeBinaryInputInfo (int ,int *,int *) ;
 int getTypeInputInfo (int ,int *,int *) ;
 int initStringInfo (TYPE_3__*) ;
 scalar_t__ palloc (int) ;
 int pfree (char*) ;
 char* pg_client_to_server (char*,int) ;
 int pq_getmsgbytes (TYPE_3__*,int) ;
 int pq_getmsgint (TYPE_3__*,int) ;
 int resetStringInfo (TYPE_3__*) ;

__attribute__((used)) static int16
parse_fcall_arguments(StringInfo msgBuf, struct fp_info *fip,
       FunctionCallInfo fcinfo)
{
 int nargs;
 int i;
 int numAFormats;
 int16 *aformats = ((void*)0);
 StringInfoData abuf;


 numAFormats = pq_getmsgint(msgBuf, 2);
 if (numAFormats > 0)
 {
  aformats = (int16 *) palloc(numAFormats * sizeof(int16));
  for (i = 0; i < numAFormats; i++)
   aformats[i] = pq_getmsgint(msgBuf, 2);
 }

 nargs = pq_getmsgint(msgBuf, 2);

 if (fip->flinfo.fn_nargs != nargs || nargs > FUNC_MAX_ARGS)
  ereport(ERROR,
    (errcode(ERRCODE_PROTOCOL_VIOLATION),
     errmsg("function call message contains %d arguments but function requires %d",
      nargs, fip->flinfo.fn_nargs)));

 fcinfo->nargs = nargs;

 if (numAFormats > 1 && numAFormats != nargs)
  ereport(ERROR,
    (errcode(ERRCODE_PROTOCOL_VIOLATION),
     errmsg("function call message contains %d argument formats but %d arguments",
      numAFormats, nargs)));

 initStringInfo(&abuf);




 for (i = 0; i < nargs; ++i)
 {
  int argsize;
  int16 aformat;

  argsize = pq_getmsgint(msgBuf, 4);
  if (argsize == -1)
  {
   fcinfo->args[i].isnull = 1;
  }
  else
  {
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
  }

  if (numAFormats > 1)
   aformat = aformats[i];
  else if (numAFormats > 0)
   aformat = aformats[0];
  else
   aformat = 0;

  if (aformat == 0)
  {
   Oid typinput;
   Oid typioparam;
   char *pstring;

   getTypeInputInfo(fip->argtypes[i], &typinput, &typioparam);







   if (argsize == -1)
    pstring = ((void*)0);
   else
    pstring = pg_client_to_server(abuf.data, argsize);

   fcinfo->args[i].value = OidInputFunctionCall(typinput, pstring,
               typioparam, -1);

   if (pstring && pstring != abuf.data)
    pfree(pstring);
  }
  else if (aformat == 1)
  {
   Oid typreceive;
   Oid typioparam;
   StringInfo bufptr;


   getTypeBinaryInputInfo(fip->argtypes[i], &typreceive, &typioparam);

   if (argsize == -1)
    bufptr = ((void*)0);
   else
    bufptr = &abuf;

   fcinfo->args[i].value = OidReceiveFunctionCall(typreceive, bufptr,
                 typioparam, -1);


   if (argsize != -1 && abuf.cursor != abuf.len)
    ereport(ERROR,
      (errcode(ERRCODE_INVALID_BINARY_REPRESENTATION),
       errmsg("incorrect binary data format in function argument %d",
        i + 1)));
  }
  else
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
      errmsg("unsupported format code: %d", aformat)));
 }


 return (int16) pq_getmsgint(msgBuf, 2);
}
