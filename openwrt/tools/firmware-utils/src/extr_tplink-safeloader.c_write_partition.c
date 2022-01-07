
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flash_partition_entry {int size; scalar_t__ base; } ;
typedef int buf ;
typedef int FILE ;


 int SEEK_SET ;
 int errno ;
 int error (int,int ,char*) ;
 int fread (char*,size_t,int,int *) ;
 int fseek (int *,scalar_t__,int ) ;
 int fwrite (char*,size_t,int,int *) ;

__attribute__((used)) static void write_partition(
  FILE *input_file,
  size_t firmware_offset,
  struct flash_partition_entry *entry,
  FILE *output_file)
{
 char buf[4096];
 size_t offset;

 fseek(input_file, entry->base + firmware_offset, SEEK_SET);

 for (offset = 0; sizeof(buf) + offset <= entry->size; offset += sizeof(buf)) {
  if (fread(buf, sizeof(buf), 1, input_file) != 1)
   error(1, errno, "Can not read partition from input_file");

  if (fwrite(buf, sizeof(buf), 1, output_file) != 1)
   error(1, errno, "Can not write partition to output_file");
 }

 if (offset < entry->size) {
  offset = entry->size - offset;
  if (fread(buf, offset, 1, input_file) != 1)
   error(1, errno, "Can not read partition from input_file");
  if (fwrite(buf, offset, 1, output_file) != 1)
   error(1, errno, "Can not write partition to output_file");
 }
}
