
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int nNumUsed; } ;


 TYPE_1__ ZCG (int ) ;
 int xlat_table ;

uint32_t zend_shared_alloc_checkpoint_xlat_table(void)
{
 return ZCG(xlat_table).nNumUsed;
}
