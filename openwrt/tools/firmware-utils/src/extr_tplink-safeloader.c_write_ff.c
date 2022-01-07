
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int FILE ;


 int errno ;
 int error (int,int ,char*) ;
 int fwrite (char*,size_t,int,int *) ;
 int memset (char*,int,int) ;

__attribute__((used)) static void write_ff(FILE *output_file, size_t size)
{
 char buf[4096];
 size_t offset;

 memset(buf, 0xff, sizeof(buf));

 for (offset = 0; offset + sizeof(buf) < size ; offset += sizeof(buf)) {
  if (fwrite(buf, sizeof(buf), 1, output_file) != 1)
   error(1, errno, "Can not write 0xff to output_file");
 }


 if (offset < size) {
  offset = size - offset;
  if (fwrite(buf, offset, 1, output_file) != 1)
   error(1, errno, "Can not write partition to output_file");
 }
}
