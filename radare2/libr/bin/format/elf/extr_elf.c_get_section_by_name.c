
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* g_sections; } ;
struct TYPE_5__ {int name; int last; } ;
typedef TYPE_1__ RBinElfSection ;
typedef TYPE_2__ ELFOBJ ;


 scalar_t__ ELF_STRING_LENGTH ;
 int strncmp (int ,char const*,scalar_t__) ;

__attribute__((used)) static RBinElfSection* get_section_by_name(ELFOBJ *bin, const char *section_name) {
 int i;
 if (bin->g_sections) {
  for (i = 0; !bin->g_sections[i].last; i++) {
   if (!strncmp (bin->g_sections[i].name, section_name, ELF_STRING_LENGTH - 1)) {
    return &bin->g_sections[i];
   }
  }
 }
 return ((void*)0);
}
