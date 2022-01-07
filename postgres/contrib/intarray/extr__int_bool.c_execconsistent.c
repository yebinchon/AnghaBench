
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ arrb; scalar_t__ arre; } ;
struct TYPE_5__ {scalar_t__ size; } ;
typedef TYPE_1__ QUERYTYPE ;
typedef TYPE_2__ CHKVAL ;
typedef int ArrayType ;


 scalar_t__ ARRNELEMS (int *) ;
 scalar_t__ ARRPTR (int *) ;
 int CHECKARRVALID (int *) ;
 scalar_t__ GETQUERY (TYPE_1__*) ;
 int checkcondition_arr ;
 int execute (scalar_t__,void*,int,int ) ;

bool
execconsistent(QUERYTYPE *query, ArrayType *array, bool calcnot)
{
 CHKVAL chkval;

 CHECKARRVALID(array);
 chkval.arrb = ARRPTR(array);
 chkval.arre = chkval.arrb + ARRNELEMS(array);
 return execute(GETQUERY(query) + query->size - 1,
       (void *) &chkval, calcnot,
       checkcondition_arr);
}
