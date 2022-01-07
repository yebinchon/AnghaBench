
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; scalar_t__ repl; } ;
typedef TYPE_1__ AFFIX ;


 scalar_t__ FF_PREFIX ;
 int strbcmp (unsigned char const*,unsigned char const*) ;
 int strcmp (scalar_t__,scalar_t__) ;

__attribute__((used)) static int
cmpaffix(const void *s1, const void *s2)
{
 const AFFIX *a1 = (const AFFIX *) s1;
 const AFFIX *a2 = (const AFFIX *) s2;

 if (a1->type < a2->type)
  return -1;
 if (a1->type > a2->type)
  return 1;
 if (a1->type == FF_PREFIX)
  return strcmp(a1->repl, a2->repl);
 else
  return strbcmp((const unsigned char *) a1->repl,
        (const unsigned char *) a2->repl);
}
