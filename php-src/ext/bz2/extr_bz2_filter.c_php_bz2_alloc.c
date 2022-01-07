
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int persistent; } ;
typedef TYPE_1__ php_bz2_filter_data ;


 scalar_t__ safe_pemalloc (int,int,int ,int ) ;

__attribute__((used)) static void *php_bz2_alloc(void *opaque, int items, int size)
{
 return (void *)safe_pemalloc(items, size, 0, ((php_bz2_filter_data*)opaque)->persistent);
}
