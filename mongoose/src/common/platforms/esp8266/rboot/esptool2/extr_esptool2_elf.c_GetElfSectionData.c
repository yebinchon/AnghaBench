
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int fd; } ;
struct TYPE_5__ {int name; int size; scalar_t__ offset; } ;
typedef TYPE_1__ MyElf_Section ;
typedef TYPE_2__ MyElf_File ;


 int SEEK_SET ;
 int error (char*,...) ;
 int fread (unsigned char*,int,int ,int ) ;
 int free (unsigned char*) ;
 scalar_t__ fseek (int ,scalar_t__,int ) ;
 scalar_t__ malloc (int ) ;

unsigned char* GetElfSectionData(MyElf_File *elf, MyElf_Section *section) {

    unsigned char *data = 0;

 if (section->size && section->offset) {

  data = (unsigned char*)malloc(section->size);
  if(!data) {
         error("Error: Out of memory!\r\n");
   return 0;
  }

  if(fseek(elf->fd, section->offset, SEEK_SET) ||
     fread(data, 1, section->size, elf->fd) != section->size) {
   error("Error: Can't read section '%s' data from elf file.\r\n", section->name);
   free(data);
   return 0;
     }

 } else {
  error("Error: Section '%s' has no data to read.\r\n", section->name);
 }

    return data;
}
