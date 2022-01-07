
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int curoperand; int operand; int curitem; } ;
struct TYPE_8__ {int size; } ;
typedef TYPE_1__* TSQuery ;
typedef int QTNode ;
typedef TYPE_2__ QTN2QTState ;


 int COMPUTESIZE (int,int) ;
 int ERRCODE_PROGRAM_LIMIT_EXCEEDED ;
 int ERROR ;
 int GETOPERAND (TYPE_1__*) ;
 int GETQUERY (TYPE_1__*) ;
 int SET_VARSIZE (TYPE_1__*,int) ;
 scalar_t__ TSQUERY_TOO_BIG (int,int) ;
 int cntsize (int *,int*,int*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int fillQT (TYPE_2__*,int *) ;
 scalar_t__ palloc0 (int) ;

TSQuery
QTN2QT(QTNode *in)
{
 TSQuery out;
 int len;
 int sumlen = 0,
    nnode = 0;
 QTN2QTState state;

 cntsize(in, &sumlen, &nnode);

 if (TSQUERY_TOO_BIG(nnode, sumlen))
  ereport(ERROR,
    (errcode(ERRCODE_PROGRAM_LIMIT_EXCEEDED),
     errmsg("tsquery is too large")));
 len = COMPUTESIZE(nnode, sumlen);

 out = (TSQuery) palloc0(len);
 SET_VARSIZE(out, len);
 out->size = nnode;

 state.curitem = GETQUERY(out);
 state.operand = state.curoperand = GETOPERAND(out);

 fillQT(&state, in);
 return out;
}
