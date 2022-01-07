
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16 ;
typedef scalar_t__ int8 ;
struct TYPE_7__ {int nchild; struct TYPE_7__** child; TYPE_2__* valnode; int flags; } ;
struct TYPE_5__ {int distance; scalar_t__ oper; } ;
struct TYPE_6__ {TYPE_1__ qoperator; int type; } ;
typedef int TSQuery ;
typedef TYPE_2__ QueryItem ;
typedef TYPE_3__ QTNode ;


 int GETOPERAND (int ) ;
 int GETQUERY (int ) ;
 scalar_t__ OP_PHRASE ;
 int QI_OPR ;
 void* QT2QTN (int ,int ) ;
 int QTN_NEEDFREE ;
 scalar_t__ palloc0 (int) ;

__attribute__((used)) static QTNode *
join_tsqueries(TSQuery a, TSQuery b, int8 operator, uint16 distance)
{
 QTNode *res = (QTNode *) palloc0(sizeof(QTNode));

 res->flags |= QTN_NEEDFREE;

 res->valnode = (QueryItem *) palloc0(sizeof(QueryItem));
 res->valnode->type = QI_OPR;
 res->valnode->qoperator.oper = operator;
 if (operator == OP_PHRASE)
  res->valnode->qoperator.distance = distance;

 res->child = (QTNode **) palloc0(sizeof(QTNode *) * 2);
 res->child[0] = QT2QTN(GETQUERY(b), GETOPERAND(b));
 res->child[1] = QT2QTN(GETQUERY(a), GETOPERAND(a));
 res->nchild = 2;

 return res;
}
