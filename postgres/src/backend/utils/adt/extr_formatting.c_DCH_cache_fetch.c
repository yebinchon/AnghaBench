
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int valid; int format; } ;
typedef TYPE_1__ DCHCacheEntry ;


 int DCH_FLAG ;
 TYPE_1__* DCH_cache_getnew (char const*,int) ;
 TYPE_1__* DCH_cache_search (char const*,int) ;
 int DCH_index ;
 int DCH_keywords ;
 int DCH_suff ;
 int STD_FLAG ;
 int parse_format (int ,char const*,int ,int ,int ,int,int *) ;

__attribute__((used)) static DCHCacheEntry *
DCH_cache_fetch(const char *str, bool std)
{
 DCHCacheEntry *ent;

 if ((ent = DCH_cache_search(str, std)) == ((void*)0))
 {





  ent = DCH_cache_getnew(str, std);

  parse_format(ent->format, str, DCH_keywords, DCH_suff, DCH_index,
      DCH_FLAG | (std ? STD_FLAG : 0), ((void*)0));

  ent->valid = 1;
 }
 return ent;
}
