
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* key; } ;
typedef TYPE_1__ collator_sort_key_index_t ;


 int strcmp (char*,char*) ;

__attribute__((used)) static int collator_cmp_sort_keys( const void *p1, const void *p2 )
{
 char* key1 = ((collator_sort_key_index_t*)p1)->key;
 char* key2 = ((collator_sort_key_index_t*)p2)->key;

 return strcmp( key1, key2 );
}
