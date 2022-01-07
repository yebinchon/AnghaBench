
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ length; int lexeme; } ;
typedef TYPE_1__ LexemeHashKey ;


 int strncmp (int ,int ,scalar_t__) ;

__attribute__((used)) static int
lexeme_compare(const void *key1, const void *key2)
{
 const LexemeHashKey *d1 = (const LexemeHashKey *) key1;
 const LexemeHashKey *d2 = (const LexemeHashKey *) key2;


 if (d1->length > d2->length)
  return 1;
 else if (d1->length < d2->length)
  return -1;

 return strncmp(d1->lexeme, d2->lexeme, d1->length);
}
