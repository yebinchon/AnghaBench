
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int32 ;
struct TYPE_6__ {char* op; char* cur; int buflen; char* buf; TYPE_1__* curpol; } ;
struct TYPE_5__ {scalar_t__ type; int distance; int length; int flag; scalar_t__ val; } ;
typedef TYPE_2__ INFIX ;


 int LVAR_ANYEND ;
 int LVAR_INCASE ;
 int LVAR_SUBLEXEME ;
 scalar_t__ OPR ;
 int RESIZEBUF (TYPE_2__*,int) ;
 scalar_t__ VAL ;
 int check_stack_depth () ;
 scalar_t__ palloc (int) ;
 int pfree (char*) ;
 int sprintf (char*,char*,...) ;
 void* strchr (char*,char) ;

__attribute__((used)) static void
infix(INFIX *in, bool first)
{

 check_stack_depth();

 if (in->curpol->type == VAL)
 {
  char *op = in->op + in->curpol->distance;

  RESIZEBUF(in, in->curpol->length * 2 + 5);
  while (*op)
  {
   *(in->cur) = *op;
   op++;
   in->cur++;
  }
  if (in->curpol->flag & LVAR_SUBLEXEME)
  {
   *(in->cur) = '%';
   in->cur++;
  }
  if (in->curpol->flag & LVAR_INCASE)
  {
   *(in->cur) = '@';
   in->cur++;
  }
  if (in->curpol->flag & LVAR_ANYEND)
  {
   *(in->cur) = '*';
   in->cur++;
  }
  *(in->cur) = '\0';
  in->curpol++;
 }
 else if (in->curpol->val == (int32) '!')
 {
  bool isopr = 0;

  RESIZEBUF(in, 1);
  *(in->cur) = '!';
  in->cur++;
  *(in->cur) = '\0';
  in->curpol++;
  if (in->curpol->type == OPR)
  {
   isopr = 1;
   RESIZEBUF(in, 2);
   sprintf(in->cur, "( ");
   in->cur = strchr(in->cur, '\0');
  }
  infix(in, isopr);
  if (isopr)
  {
   RESIZEBUF(in, 2);
   sprintf(in->cur, " )");
   in->cur = strchr(in->cur, '\0');
  }
 }
 else
 {
  int32 op = in->curpol->val;
  INFIX nrm;

  in->curpol++;
  if (op == (int32) '|' && !first)
  {
   RESIZEBUF(in, 2);
   sprintf(in->cur, "( ");
   in->cur = strchr(in->cur, '\0');
  }

  nrm.curpol = in->curpol;
  nrm.op = in->op;
  nrm.buflen = 16;
  nrm.cur = nrm.buf = (char *) palloc(sizeof(char) * nrm.buflen);


  infix(&nrm, 0);


  in->curpol = nrm.curpol;
  infix(in, 0);


  RESIZEBUF(in, 3 + (nrm.cur - nrm.buf));
  sprintf(in->cur, " %c %s", op, nrm.buf);
  in->cur = strchr(in->cur, '\0');
  pfree(nrm.buf);

  if (op == (int32) '|' && !first)
  {
   RESIZEBUF(in, 2);
   sprintf(in->cur, " )");
   in->cur = strchr(in->cur, '\0');
  }
 }
}
