
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int* need_recheck; int* map_item_operand; int * check; int * first_item; } ;
struct TYPE_5__ {scalar_t__ weight; } ;
typedef TYPE_1__ QueryOperand ;
typedef int QueryItem ;
typedef int GinTernaryValue ;
typedef TYPE_2__ GinChkVal ;
typedef int ExecPhraseData ;



__attribute__((used)) static GinTernaryValue
checkcondition_gin_internal(GinChkVal *gcv, QueryOperand *val, ExecPhraseData *data)
{
 int j;





 if (val->weight != 0 || data != ((void*)0))
  *(gcv->need_recheck) = 1;


 j = gcv->map_item_operand[((QueryItem *) val) - gcv->first_item];


 return gcv->check[j];
}
