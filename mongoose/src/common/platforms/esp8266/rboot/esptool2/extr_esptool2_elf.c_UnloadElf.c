
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* sections; struct TYPE_4__* strings; scalar_t__ fd; } ;
typedef TYPE_1__ MyElf_File ;


 int debug (char*) ;
 int fclose (scalar_t__) ;
 int free (TYPE_1__*) ;

void UnloadElf(MyElf_File *elf) {
 if (elf) {
  debug("Unloading elf file.\r\n");
  if(elf->fd) fclose(elf->fd);
  if(elf->strings) free(elf->strings);
  if(elf->sections) free(elf->sections);
  free(elf);
 }
}
