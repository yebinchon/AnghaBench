
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ size; } ;
typedef TYPE_1__ QUERYTYPE ;
typedef scalar_t__ BITVEC ;


 scalar_t__ GETQUERY (TYPE_1__*) ;
 int checkcondition_bit ;
 int execute (scalar_t__,void*,int,int ) ;

bool
signconsistent(QUERYTYPE *query, BITVEC sign, bool calcnot)
{
 return execute(GETQUERY(query) + query->size - 1,
       (void *) sign, calcnot,
       checkcondition_bit);
}
