
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int ifndef_macro; int hash_next; int filename; } ;
struct TYPE_7__ {int nb_cached_includes; int * cached_includes_hash; int cached_includes; } ;
typedef TYPE_1__ TCCState ;
typedef TYPE_2__ CachedInclude ;


 int dynarray_add (void***,int *,TYPE_2__*) ;
 char* get_tok_str (int,int *) ;
 int hash_cached_include (char const*) ;
 TYPE_2__* malloc (scalar_t__) ;
 int printf (char*,char const*,char*) ;
 scalar_t__ search_cached_include (TYPE_1__*,char const*) ;
 int strcpy (int ,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static inline void add_cached_include(TCCState *s1, const char *filename, int ifndef_macro)
{
 CachedInclude *e;
 int h;

 if (search_cached_include (s1, filename)) {
  return;
 }



 e = malloc (sizeof(CachedInclude) + strlen (filename));
 strcpy (e->filename, filename);
 e->ifndef_macro = ifndef_macro;
 dynarray_add ((void ***) &s1->cached_includes, &s1->nb_cached_includes, e);

 h = hash_cached_include (filename);
 e->hash_next = s1->cached_includes_hash[h];
 s1->cached_includes_hash[h] = s1->nb_cached_includes;
}
