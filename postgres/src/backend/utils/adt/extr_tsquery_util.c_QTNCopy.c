
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {char* word; int nchild; struct TYPE_8__** child; int flags; TYPE_2__* valnode; } ;
struct TYPE_6__ {int length; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_1__ qoperand; } ;
typedef TYPE_2__ QueryItem ;
typedef TYPE_3__ QTNode ;


 scalar_t__ QI_VAL ;
 int QTN_NEEDFREE ;
 int QTN_WORDFREE ;
 int check_stack_depth () ;
 int memcpy (char*,char*,int) ;
 char* palloc (int) ;

QTNode *
QTNCopy(QTNode *in)
{
 QTNode *out;


 check_stack_depth();

 out = (QTNode *) palloc(sizeof(QTNode));

 *out = *in;
 out->valnode = (QueryItem *) palloc(sizeof(QueryItem));
 *(out->valnode) = *(in->valnode);
 out->flags |= QTN_NEEDFREE;

 if (in->valnode->type == QI_VAL)
 {
  out->word = palloc(in->valnode->qoperand.length + 1);
  memcpy(out->word, in->word, in->valnode->qoperand.length);
  out->word[in->valnode->qoperand.length] = '\0';
  out->flags |= QTN_WORDFREE;
 }
 else
 {
  int i;

  out->child = (QTNode **) palloc(sizeof(QTNode *) * in->nchild);

  for (i = 0; i < in->nchild; i++)
   out->child[i] = QTNCopy(in->child[i]);
 }

 return out;
}
