
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* key; } ;
struct TYPE_4__ {int name; } ;
typedef TYPE_2__ FormatNode ;


 int Assert (int) ;
 int DCH_MAX_ITEM_SIZ ;
 int ERRCODE_INVALID_DATETIME_FORMAT ;
 int ERROR ;
 int RETURN_ERROR (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errmsg (char*,char*,int ) ;
 int seq_search (char*,char const* const*,int,int,int*) ;
 int strlcpy (char*,char*,int) ;

__attribute__((used)) static int
from_char_seq_search(int *dest, char **src, const char *const *array, int type,
      int max, FormatNode *node, bool *have_error)
{
 int len;

 *dest = seq_search(*src, array, type, max, &len);
 if (len <= 0)
 {
  char copy[DCH_MAX_ITEM_SIZ + 1];

  Assert(max <= DCH_MAX_ITEM_SIZ);
  strlcpy(copy, *src, max + 1);

  RETURN_ERROR(ereport(ERROR,
        (errcode(ERRCODE_INVALID_DATETIME_FORMAT),
         errmsg("invalid value \"%s\" for \"%s\"",
          copy, node->key->name),
         errdetail("The given value did not match any of "
          "the allowed values for this field."))));
 }
 *src += len;
 return len;

on_error:
 return -1;
}
