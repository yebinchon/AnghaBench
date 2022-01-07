
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int data ;
typedef int FILE ;


 int fclose (int *) ;
 scalar_t__ feof (int *) ;
 int * fopen (char const*,char*) ;
 size_t fread (int *,int,int,int *) ;
 size_t fwrite (int *,int,size_t,int *) ;
 scalar_t__ os_file_exists (char const*) ;

int os_copyfile(const char *file_path_in, const char *file_path_out)
{
 FILE *file_out = ((void*)0);
 FILE *file_in = ((void*)0);
 uint8_t data[4096];
 int ret = -1;
 size_t size;

 if (os_file_exists(file_path_out))
  return -1;

 file_in = fopen(file_path_in, "rb");
 if (!file_in)
  return -1;

 file_out = fopen(file_path_out, "ab+");
 if (!file_out)
  goto error;

 do {
  size = fread(data, 1, sizeof(data), file_in);
  if (size)
   size = fwrite(data, 1, size, file_out);
 } while (size == sizeof(data));

 ret = feof(file_in) ? 0 : -1;

error:
 if (file_out)
  fclose(file_out);
 fclose(file_in);
 return ret;
}
