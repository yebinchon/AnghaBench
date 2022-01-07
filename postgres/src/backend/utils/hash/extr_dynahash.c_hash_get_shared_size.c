
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dsize; int max_dsize; } ;
typedef int Size ;
typedef int HASHSEGMENT ;
typedef int HASHHDR ;
typedef TYPE_1__ HASHCTL ;


 int Assert (int) ;
 int HASH_DIRSIZE ;

Size
hash_get_shared_size(HASHCTL *info, int flags)
{
 Assert(flags & HASH_DIRSIZE);
 Assert(info->dsize == info->max_dsize);
 return sizeof(HASHHDR) + info->dsize * sizeof(HASHSEGMENT);
}
