
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int nfonts; TYPE_1__** fonts; } ;
struct TYPE_4__ {int name; } ;
typedef TYPE_2__ FONScontext ;


 int FONS_INVALID ;
 scalar_t__ strcmp (int ,char const*) ;

int fonsGetFontByName(FONScontext* s, const char* name)
{
 int i;
 for (i = 0; i < s->nfonts; i++) {
  if (strcmp(s->fonts[i]->name, name) == 0)
   return i;
 }
 return FONS_INVALID;
}
