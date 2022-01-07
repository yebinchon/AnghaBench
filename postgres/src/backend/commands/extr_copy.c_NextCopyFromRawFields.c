
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ len; } ;
struct TYPE_8__ {scalar_t__ cur_lineno; char** raw_fields; scalar_t__ csv_mode; TYPE_1__ line_buf; scalar_t__ header_line; int binary; } ;
typedef TYPE_2__* CopyState ;


 int Assert (int) ;
 int CopyReadAttributesCSV (TYPE_2__*) ;
 int CopyReadAttributesText (TYPE_2__*) ;
 int CopyReadLine (TYPE_2__*) ;

bool
NextCopyFromRawFields(CopyState cstate, char ***fields, int *nfields)
{
 int fldct;
 bool done;


 Assert(!cstate->binary);


 if (cstate->cur_lineno == 0 && cstate->header_line)
 {
  cstate->cur_lineno++;
  if (CopyReadLine(cstate))
   return 0;
 }

 cstate->cur_lineno++;


 done = CopyReadLine(cstate);






 if (done && cstate->line_buf.len == 0)
  return 0;


 if (cstate->csv_mode)
  fldct = CopyReadAttributesCSV(cstate);
 else
  fldct = CopyReadAttributesText(cstate);

 *fields = cstate->raw_fields;
 *nfields = fldct;
 return 1;
}
