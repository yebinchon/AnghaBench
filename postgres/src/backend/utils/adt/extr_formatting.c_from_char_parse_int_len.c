
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* key; int suffix; } ;
struct TYPE_6__ {int name; } ;
typedef TYPE_2__ FormatNode ;


 int Assert (int) ;
 int CHECK_ERROR ;
 int DCH_MAX_ITEM_SIZ ;
 scalar_t__ ERANGE ;
 int ERRCODE_DATETIME_VALUE_OUT_OF_RANGE ;
 int ERRCODE_INVALID_DATETIME_FORMAT ;
 int ERROR ;
 long INT_MAX ;
 long INT_MIN ;
 int RETURN_ERROR (int ) ;
 scalar_t__ S_FM (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,...) ;
 int errhint (char*) ;
 int errmsg (char*,char*,...) ;
 scalar_t__ errno ;
 int from_char_set_int (int*,int,TYPE_2__*,int*) ;
 scalar_t__ is_next_separator (TYPE_2__*) ;
 scalar_t__ strlcpy (char*,char*,int const) ;
 int strspace_len (char*) ;
 long strtol (char*,char**,int) ;

__attribute__((used)) static int
from_char_parse_int_len(int *dest, char **src, const int len, FormatNode *node,
      bool *have_error)
{
 long result;
 char copy[DCH_MAX_ITEM_SIZ + 1];
 char *init = *src;
 int used;




 *src += strspace_len(*src);

 Assert(len <= DCH_MAX_ITEM_SIZ);
 used = (int) strlcpy(copy, *src, len + 1);

 if (S_FM(node->suffix) || is_next_separator(node))
 {




  errno = 0;
  result = strtol(init, src, 10);
 }
 else
 {




  char *last;

  if (used < len)
   RETURN_ERROR(ereport(ERROR,
         (errcode(ERRCODE_INVALID_DATETIME_FORMAT),
          errmsg("source string too short for \"%s\" "
           "formatting field",
           node->key->name),
          errdetail("Field requires %d characters, "
           "but only %d remain.",
           len, used),
          errhint("If your source string is not fixed-width, "
            "try using the \"FM\" modifier."))));

  errno = 0;
  result = strtol(copy, &last, 10);
  used = last - copy;

  if (used > 0 && used < len)
   RETURN_ERROR(ereport(ERROR,
         (errcode(ERRCODE_INVALID_DATETIME_FORMAT),
          errmsg("invalid value \"%s\" for \"%s\"",
           copy, node->key->name),
          errdetail("Field requires %d characters, "
           "but only %d could be parsed.",
           len, used),
          errhint("If your source string is not fixed-width, "
            "try using the \"FM\" modifier."))));

  *src += used;
 }

 if (*src == init)
  RETURN_ERROR(ereport(ERROR,
        (errcode(ERRCODE_INVALID_DATETIME_FORMAT),
         errmsg("invalid value \"%s\" for \"%s\"",
          copy, node->key->name),
         errdetail("Value must be an integer."))));

 if (errno == ERANGE || result < INT_MIN || result > INT_MAX)
  RETURN_ERROR(ereport(ERROR,
        (errcode(ERRCODE_DATETIME_VALUE_OUT_OF_RANGE),
         errmsg("value for \"%s\" in source string is out of range",
          node->key->name),
         errdetail("Value must be in the range %d to %d.",
          INT_MIN, INT_MAX))));

 if (dest != ((void*)0))
 {
  from_char_set_int(dest, (int) result, node, have_error);
  CHECK_ERROR;
 }

 return *src - init;

on_error:
 return -1;
}
