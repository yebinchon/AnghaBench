
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int e_shnum; } ;
struct TYPE_8__ {TYPE_2__* sections; TYPE_1__ header; } ;
struct TYPE_7__ {int name; } ;
typedef TYPE_2__ MyElf_Section ;
typedef TYPE_3__ MyElf_File ;


 int debug (char*,char*) ;
 int strcmp (char*,int ) ;

MyElf_Section* GetElfSection(MyElf_File *elf, char *name) {

 int i;

    for(i = 0; i < elf->header.e_shnum - 1; i++) {
  if(!strcmp(name, elf->sections[i].name)) {
   debug("Found section '%s'.\r\n", name);
   return &elf->sections[i];
  }
 }

 debug("Could not find section '%s'.\r\n", name);
 return 0;
}
