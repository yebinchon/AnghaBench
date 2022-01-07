
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* rd_indam; } ;
struct TYPE_5__ {int (* amcanreturn ) (TYPE_2__*,int) ;} ;
typedef TYPE_2__* Relation ;


 int RELATION_CHECKS ;
 int stub1 (TYPE_2__*,int) ;

bool
index_can_return(Relation indexRelation, int attno)
{
 RELATION_CHECKS;


 if (indexRelation->rd_indam->amcanreturn == ((void*)0))
  return 0;

 return indexRelation->rd_indam->amcanreturn(indexRelation, attno);
}
