
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_3__ {long size; int prot; } ;


 long HPAGE_SIZE ;
 int assert (TYPE_1__*) ;
 int mprotect_pkey (int*,long,int,int ) ;
 TYPE_1__* pkey_last_malloc_record ;

void test_mprotect_with_pkey_0(int *ptr, u16 pkey)
{
 long size;
 int prot;

 assert(pkey_last_malloc_record);
 size = pkey_last_malloc_record->size;






 if (size >= HPAGE_SIZE)
  size = HPAGE_SIZE;
 prot = pkey_last_malloc_record->prot;


 mprotect_pkey(ptr, size, prot, 0);


 mprotect_pkey(ptr, size, prot, pkey);
}
