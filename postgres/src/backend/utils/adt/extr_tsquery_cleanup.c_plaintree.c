
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* valnode; } ;
struct TYPE_8__ {int cur; int len; int * ptr; } ;
struct TYPE_7__ {scalar_t__ type; } ;
typedef int QueryItem ;
typedef TYPE_2__ PLAINTREE ;
typedef TYPE_3__ NODE ;


 scalar_t__ QI_OPR ;
 scalar_t__ QI_VAL ;
 scalar_t__ palloc (int) ;
 int plainnode (TYPE_2__*,TYPE_3__*) ;

__attribute__((used)) static QueryItem *
plaintree(NODE *root, int *len)
{
 PLAINTREE pl;

 pl.cur = 0;
 pl.len = 16;
 if (root && (root->valnode->type == QI_VAL || root->valnode->type == QI_OPR))
 {
  pl.ptr = (QueryItem *) palloc(pl.len * sizeof(QueryItem));
  plainnode(&pl, root);
 }
 else
  pl.ptr = ((void*)0);
 *len = pl.cur;
 return pl.ptr;
}
