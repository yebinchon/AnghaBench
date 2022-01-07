
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int valid; int Num; int format; } ;
typedef TYPE_1__ NUMCacheEntry ;


 int NUM_FLAG ;
 TYPE_1__* NUM_cache_getnew (char const*) ;
 TYPE_1__* NUM_cache_search (char const*) ;
 int NUM_index ;
 int NUM_keywords ;
 int parse_format (int ,char const*,int ,int *,int ,int ,int *) ;
 int zeroize_NUM (int *) ;

__attribute__((used)) static NUMCacheEntry *
NUM_cache_fetch(const char *str)
{
 NUMCacheEntry *ent;

 if ((ent = NUM_cache_search(str)) == ((void*)0))
 {





  ent = NUM_cache_getnew(str);

  zeroize_NUM(&ent->Num);

  parse_format(ent->format, str, NUM_keywords,
      ((void*)0), NUM_index, NUM_FLAG, &ent->Num);

  ent->valid = 1;
 }
 return ent;
}
