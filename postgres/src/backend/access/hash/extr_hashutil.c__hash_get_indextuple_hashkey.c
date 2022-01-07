
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_3__ {int t_info; } ;
typedef TYPE_1__* IndexTuple ;


 int IndexInfoFindDataOffset (int ) ;

uint32
_hash_get_indextuple_hashkey(IndexTuple itup)
{
 char *attp;





 attp = (char *) itup + IndexInfoFindDataOffset(itup->t_info);
 return *((uint32 *) attp);
}
