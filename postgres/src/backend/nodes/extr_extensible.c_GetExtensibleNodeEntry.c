
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void const* extnodemethods; } ;
typedef int HTAB ;
typedef TYPE_1__ ExtensibleNodeEntry ;


 int ERRCODE_UNDEFINED_OBJECT ;
 int ERROR ;
 int HASH_FIND ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;
 scalar_t__ hash_search (int *,char const*,int ,int *) ;

__attribute__((used)) static const void *
GetExtensibleNodeEntry(HTAB *htable, const char *extnodename, bool missing_ok)
{
 ExtensibleNodeEntry *entry = ((void*)0);

 if (htable != ((void*)0))
  entry = (ExtensibleNodeEntry *) hash_search(htable,
             extnodename,
             HASH_FIND, ((void*)0));
 if (!entry)
 {
  if (missing_ok)
   return ((void*)0);
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_OBJECT),
     errmsg("ExtensibleNodeMethods \"%s\" was not registered",
      extnodename)));
 }

 return entry->extnodemethods;
}
