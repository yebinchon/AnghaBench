
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int8 ;
typedef int int16 ;
struct TYPE_7__ {scalar_t__ oper; int distance; } ;
struct TYPE_8__ {int distance; int length; int weight; scalar_t__ prefix; } ;
struct TYPE_10__ {scalar_t__ type; TYPE_1__ qoperator; TYPE_2__ qoperand; } ;
struct TYPE_9__ {char* op; char* cur; int buflen; char* buf; TYPE_6__* curpol; } ;
typedef TYPE_2__ QueryOperand ;
typedef TYPE_3__ INFIX ;


 int COPYCHAR (char*,char*) ;
 int ERROR ;

 scalar_t__ OP_NOT ;


 scalar_t__ QI_VAL ;
 int QO_PRIORITY (TYPE_6__*) ;
 int RESIZEBUF (TYPE_3__*,int) ;
 int check_stack_depth () ;
 int elog (int ,char*,int) ;
 scalar_t__ palloc (int) ;
 int pfree (char*) ;
 int pg_database_encoding_max_length () ;
 int pg_mblen (char*) ;
 int sprintf (char*,char*,...) ;
 void* strchr (char*,char) ;
 scalar_t__ t_iseq (char*,char) ;

__attribute__((used)) static void
infix(INFIX *in, int parentPriority, bool rightPhraseOp)
{

 check_stack_depth();

 if (in->curpol->type == QI_VAL)
 {
  QueryOperand *curpol = &in->curpol->qoperand;
  char *op = in->op + curpol->distance;
  int clen;

  RESIZEBUF(in, curpol->length * (pg_database_encoding_max_length() + 1) + 2 + 6);
  *(in->cur) = '\'';
  in->cur++;
  while (*op)
  {
   if (t_iseq(op, '\''))
   {
    *(in->cur) = '\'';
    in->cur++;
   }
   else if (t_iseq(op, '\\'))
   {
    *(in->cur) = '\\';
    in->cur++;
   }
   COPYCHAR(in->cur, op);

   clen = pg_mblen(op);
   op += clen;
   in->cur += clen;
  }
  *(in->cur) = '\'';
  in->cur++;
  if (curpol->weight || curpol->prefix)
  {
   *(in->cur) = ':';
   in->cur++;
   if (curpol->prefix)
   {
    *(in->cur) = '*';
    in->cur++;
   }
   if (curpol->weight & (1 << 3))
   {
    *(in->cur) = 'A';
    in->cur++;
   }
   if (curpol->weight & (1 << 2))
   {
    *(in->cur) = 'B';
    in->cur++;
   }
   if (curpol->weight & (1 << 1))
   {
    *(in->cur) = 'C';
    in->cur++;
   }
   if (curpol->weight & 1)
   {
    *(in->cur) = 'D';
    in->cur++;
   }
  }
  *(in->cur) = '\0';
  in->curpol++;
 }
 else if (in->curpol->qoperator.oper == OP_NOT)
 {
  int priority = QO_PRIORITY(in->curpol);

  if (priority < parentPriority)
  {
   RESIZEBUF(in, 2);
   sprintf(in->cur, "( ");
   in->cur = strchr(in->cur, '\0');
  }
  RESIZEBUF(in, 1);
  *(in->cur) = '!';
  in->cur++;
  *(in->cur) = '\0';
  in->curpol++;

  infix(in, priority, 0);
  if (priority < parentPriority)
  {
   RESIZEBUF(in, 2);
   sprintf(in->cur, " )");
   in->cur = strchr(in->cur, '\0');
  }
 }
 else
 {
  int8 op = in->curpol->qoperator.oper;
  int priority = QO_PRIORITY(in->curpol);
  int16 distance = in->curpol->qoperator.distance;
  INFIX nrm;
  bool needParenthesis = 0;

  in->curpol++;
  if (priority < parentPriority ||

   (op == 128 && rightPhraseOp))
  {
   needParenthesis = 1;
   RESIZEBUF(in, 2);
   sprintf(in->cur, "( ");
   in->cur = strchr(in->cur, '\0');
  }

  nrm.curpol = in->curpol;
  nrm.op = in->op;
  nrm.buflen = 16;
  nrm.cur = nrm.buf = (char *) palloc(sizeof(char) * nrm.buflen);


  infix(&nrm, priority, (op == 128));


  in->curpol = nrm.curpol;
  infix(in, priority, 0);


  RESIZEBUF(in, 3 + (2 + 10 ) + (nrm.cur - nrm.buf));
  switch (op)
  {
   case 129:
    sprintf(in->cur, " | %s", nrm.buf);
    break;
   case 130:
    sprintf(in->cur, " & %s", nrm.buf);
    break;
   case 128:
    if (distance != 1)
     sprintf(in->cur, " <%d> %s", distance, nrm.buf);
    else
     sprintf(in->cur, " <-> %s", nrm.buf);
    break;
   default:

    elog(ERROR, "unrecognized operator type: %d", op);
  }
  in->cur = strchr(in->cur, '\0');
  pfree(nrm.buf);

  if (needParenthesis)
  {
   RESIZEBUF(in, 2);
   sprintf(in->cur, " )");
   in->cur = strchr(in->cur, '\0');
  }
 }
}
