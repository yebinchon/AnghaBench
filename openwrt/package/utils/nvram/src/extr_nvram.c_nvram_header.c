
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int nvram_header_t ;
struct TYPE_3__ {size_t offset; int * mmap; } ;
typedef TYPE_1__ nvram_handle_t ;



nvram_header_t * nvram_header(nvram_handle_t *h)
{
 return (nvram_header_t *) &h->mmap[h->offset];
}
