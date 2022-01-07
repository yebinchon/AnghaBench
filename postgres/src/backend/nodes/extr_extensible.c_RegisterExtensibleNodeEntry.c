
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {void const* extnodemethods; } ;
struct TYPE_5__ {int entrysize; scalar_t__ keysize; } ;
typedef int HTAB ;
typedef TYPE_1__ HASHCTL ;
typedef TYPE_2__ ExtensibleNodeEntry ;


 int ERRCODE_DUPLICATE_OBJECT ;
 int ERROR ;
 scalar_t__ EXTNODENAME_MAX_LEN ;
 int HASH_ELEM ;
 int HASH_ENTER ;
 int elog (int ,char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;
 int * hash_create (char const*,int,TYPE_1__*,int ) ;
 scalar_t__ hash_search (int *,char const*,int ,int*) ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void
RegisterExtensibleNodeEntry(HTAB **p_htable, const char *htable_label,
       const char *extnodename,
       const void *extnodemethods)
{
 ExtensibleNodeEntry *entry;
 bool found;

 if (*p_htable == ((void*)0))
 {
  HASHCTL ctl;

  memset(&ctl, 0, sizeof(HASHCTL));
  ctl.keysize = EXTNODENAME_MAX_LEN;
  ctl.entrysize = sizeof(ExtensibleNodeEntry);

  *p_htable = hash_create(htable_label, 100, &ctl, HASH_ELEM);
 }

 if (strlen(extnodename) >= EXTNODENAME_MAX_LEN)
  elog(ERROR, "extensible node name is too long");

 entry = (ExtensibleNodeEntry *) hash_search(*p_htable,
            extnodename,
            HASH_ENTER, &found);
 if (found)
  ereport(ERROR,
    (errcode(ERRCODE_DUPLICATE_OBJECT),
     errmsg("extensible node type \"%s\" already exists",
      extnodename)));

 entry->extnodemethods = extnodemethods;
}
