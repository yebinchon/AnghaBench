
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int space_for_chunks; int number_of_keys; } ;
typedef TYPE_1__ shm_toc_estimator ;
typedef int shm_toc_entry ;
typedef int Size ;


 int BUFFERALIGN (int ) ;
 scalar_t__ add_size (int ,int ) ;
 int mul_size (int ,int) ;
 int offsetof (int ,int ) ;
 int shm_toc ;
 int toc_entry ;

Size
shm_toc_estimate(shm_toc_estimator *e)
{
 Size sz;

 sz = offsetof(shm_toc, toc_entry);
 sz += add_size(sz, mul_size(e->number_of_keys, sizeof(shm_toc_entry)));
 sz += add_size(sz, e->space_for_chunks);

 return BUFFERALIGN(sz);
}
