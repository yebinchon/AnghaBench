
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * search_path; void* right_arg; void* left_arg; int oprname; } ;
typedef int ParseState ;
typedef int ParseCallbackState ;
typedef TYPE_1__ OprCacheKey ;
typedef void* Oid ;
typedef int List ;


 int DeconstructQualifiedName (int *,char**,char**) ;
 int LookupExplicitNamespace (char*,int) ;
 scalar_t__ MAX_CACHED_PATH_LEN ;
 int MemSet (TYPE_1__*,int ,int) ;
 int NAMEDATALEN ;
 int cancel_parser_errposition_callback (int *) ;
 scalar_t__ fetch_search_path_array (int *,scalar_t__) ;
 int setup_parser_errposition_callback (int *,int *,int) ;
 int strlcpy (int ,char*,int ) ;

__attribute__((used)) static bool
make_oper_cache_key(ParseState *pstate, OprCacheKey *key, List *opname,
     Oid ltypeId, Oid rtypeId, int location)
{
 char *schemaname;
 char *opername;


 DeconstructQualifiedName(opname, &schemaname, &opername);


 MemSet(key, 0, sizeof(OprCacheKey));


 strlcpy(key->oprname, opername, NAMEDATALEN);
 key->left_arg = ltypeId;
 key->right_arg = rtypeId;

 if (schemaname)
 {
  ParseCallbackState pcbstate;


  setup_parser_errposition_callback(&pcbstate, pstate, location);
  key->search_path[0] = LookupExplicitNamespace(schemaname, 0);
  cancel_parser_errposition_callback(&pcbstate);
 }
 else
 {

  if (fetch_search_path_array(key->search_path,
         MAX_CACHED_PATH_LEN) > MAX_CACHED_PATH_LEN)
   return 0;
 }

 return 1;
}
