
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ int32 ;
struct TYPE_6__ {char* cur; int buflen; char* buf; TYPE_1__* curpol; } ;
struct TYPE_5__ {scalar_t__ type; int val; } ;
typedef TYPE_2__ INFIX ;


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
  RESIZEBUF(in, 11);
  sprintf(in->cur, "%d", in->curpol->val);
  in->cur = strchr(in->cur, '\0');
  in->curpol--;
 }
 else if (in->curpol->val == (int32) '!')
 {
  bool isopr = 0;

  RESIZEBUF(in, 1);
  *(in->cur) = '!';
  in->cur++;
  *(in->cur) = '\0';
  in->curpol--;
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

  in->curpol--;
  if (op == (int32) '|' && !first)
  {
   RESIZEBUF(in, 2);
   sprintf(in->cur, "( ");
   in->cur = strchr(in->cur, '\0');
  }

  nrm.curpol = in->curpol;
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
