
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* xsltFormatNumberInfoPtr ;
typedef TYPE_2__* xsltDecimalFormatPtr ;
typedef scalar_t__ xmlChar ;
struct TYPE_7__ {int permille; int percent; } ;
struct TYPE_6__ {int multiplier; void* is_multiplier_set; } ;


 scalar_t__ IS_SPECIAL (TYPE_2__*,scalar_t__*) ;
 scalar_t__ SYMBOL_QUOTE ;
 void* TRUE ;
 int xmlUTF8Strsize (scalar_t__*,int) ;
 scalar_t__ xsltUTF8Charcmp (scalar_t__*,int ) ;

__attribute__((used)) static int
xsltFormatNumberPreSuffix(xsltDecimalFormatPtr self, xmlChar **format, xsltFormatNumberInfoPtr info)
{
    int count=0;
    int len;

    while (1) {




 if (**format == 0)
     return count;

 if (**format == SYMBOL_QUOTE) {
     if (*++(*format) == 0)
  return -1;
 }
 else if (IS_SPECIAL(self, *format))
     return count;




 else {




     if (xsltUTF8Charcmp(*format, self->percent) == 0) {
  if (info->is_multiplier_set)
      return -1;
  info->multiplier = 100;
  info->is_multiplier_set = TRUE;
     } else if (xsltUTF8Charcmp(*format, self->permille) == 0) {
  if (info->is_multiplier_set)
      return -1;
  info->multiplier = 1000;
  info->is_multiplier_set = TRUE;
     }
 }

 if ((len=xmlUTF8Strsize(*format, 1)) < 1)
     return -1;
 count += len;
 *format += len;
    }
}
