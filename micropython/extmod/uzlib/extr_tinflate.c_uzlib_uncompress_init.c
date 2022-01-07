
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int btype; unsigned int dict_size; scalar_t__ curlen; scalar_t__ dict_idx; void* dict_ring; scalar_t__ bfinal; scalar_t__ bitcount; scalar_t__ eof; } ;
typedef TYPE_1__ TINF_DATA ;



void uzlib_uncompress_init(TINF_DATA *d, void *dict, unsigned int dictLen)
{
   d->eof = 0;
   d->bitcount = 0;
   d->bfinal = 0;
   d->btype = -1;
   d->dict_size = dictLen;
   d->dict_ring = dict;
   d->dict_idx = 0;
   d->curlen = 0;
}
