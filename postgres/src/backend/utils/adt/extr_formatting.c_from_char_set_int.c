
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* key; } ;
struct TYPE_4__ {int name; } ;
typedef TYPE_2__ FormatNode ;


 int ERRCODE_INVALID_DATETIME_FORMAT ;
 int ERROR ;
 int RETURN_ERROR (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errmsg (char*,int ) ;

__attribute__((used)) static void
from_char_set_int(int *dest, const int value, const FormatNode *node,
      bool *have_error)
{
 if (*dest != 0 && *dest != value)
  RETURN_ERROR(ereport(ERROR,
        (errcode(ERRCODE_INVALID_DATETIME_FORMAT),
         errmsg("conflicting values for \"%s\" field in "
          "formatting string",
          node->key->name),
         errdetail("This value contradicts a previous setting "
          "for the same field type."))));
 *dest = value;

on_error:
 return;
}
