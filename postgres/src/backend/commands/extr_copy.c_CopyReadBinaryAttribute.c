
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_9__ {char* data; int len; int cursor; } ;
struct TYPE_8__ {TYPE_2__ attribute_buf; } ;
typedef int Oid ;
typedef int FmgrInfo ;
typedef int Datum ;
typedef TYPE_1__* CopyState ;


 int CopyGetData (TYPE_1__*,char*,int,int) ;
 int CopyGetInt32 (TYPE_1__*,int*) ;
 int ERRCODE_BAD_COPY_FILE_FORMAT ;
 int ERRCODE_INVALID_BINARY_REPRESENTATION ;
 int ERROR ;
 int ReceiveFunctionCall (int *,TYPE_2__*,int ,int) ;
 int enlargeStringInfo (TYPE_2__*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int resetStringInfo (TYPE_2__*) ;

__attribute__((used)) static Datum
CopyReadBinaryAttribute(CopyState cstate,
      int column_no, FmgrInfo *flinfo,
      Oid typioparam, int32 typmod,
      bool *isnull)
{
 int32 fld_size;
 Datum result;

 if (!CopyGetInt32(cstate, &fld_size))
  ereport(ERROR,
    (errcode(ERRCODE_BAD_COPY_FILE_FORMAT),
     errmsg("unexpected EOF in COPY data")));
 if (fld_size == -1)
 {
  *isnull = 1;
  return ReceiveFunctionCall(flinfo, ((void*)0), typioparam, typmod);
 }
 if (fld_size < 0)
  ereport(ERROR,
    (errcode(ERRCODE_BAD_COPY_FILE_FORMAT),
     errmsg("invalid field size")));


 resetStringInfo(&cstate->attribute_buf);

 enlargeStringInfo(&cstate->attribute_buf, fld_size);
 if (CopyGetData(cstate, cstate->attribute_buf.data,
     fld_size, fld_size) != fld_size)
  ereport(ERROR,
    (errcode(ERRCODE_BAD_COPY_FILE_FORMAT),
     errmsg("unexpected EOF in COPY data")));

 cstate->attribute_buf.len = fld_size;
 cstate->attribute_buf.data[fld_size] = '\0';


 result = ReceiveFunctionCall(flinfo, &cstate->attribute_buf,
         typioparam, typmod);


 if (cstate->attribute_buf.cursor != cstate->attribute_buf.len)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_BINARY_REPRESENTATION),
     errmsg("incorrect binary data format")));

 *isnull = 0;
 return result;
}
