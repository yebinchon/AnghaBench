
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct text_lookup {int dummy; } ;
typedef struct text_lookup lookup_t ;


 int bfree (struct text_lookup*) ;
 struct text_lookup* bzalloc (int) ;
 int text_lookup_add (struct text_lookup*,char const*) ;

lookup_t *text_lookup_create(const char *path)
{
 struct text_lookup *lookup = bzalloc(sizeof(struct text_lookup));

 if (!text_lookup_add(lookup, path)) {
  bfree(lookup);
  lookup = ((void*)0);
 }

 return lookup;
}
