
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int element; } ;
typedef TYPE_1__ TextFreq ;
struct TYPE_4__ {int length; int lexeme; } ;
typedef TYPE_2__ LexemeKey ;


 int VARDATA_ANY (int ) ;
 int VARSIZE_ANY_EXHDR (int ) ;
 int strncmp (int ,int ,int) ;

__attribute__((used)) static int
compare_lexeme_textfreq(const void *e1, const void *e2)
{
 const LexemeKey *key = (const LexemeKey *) e1;
 const TextFreq *t = (const TextFreq *) e2;
 int len1,
    len2;

 len1 = key->length;
 len2 = VARSIZE_ANY_EXHDR(t->element);


 if (len1 > len2)
  return 1;
 else if (len1 < len2)
  return -1;


 return strncmp(key->lexeme, VARDATA_ANY(t->element), len1);
}
