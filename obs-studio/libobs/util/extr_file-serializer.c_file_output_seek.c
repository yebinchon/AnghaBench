
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_output_data {int file; } ;
typedef int int64_t ;
typedef enum serialize_seek_type { ____Placeholder_serialize_seek_type } serialize_seek_type ;


 int SEEK_CUR ;
 int SEEK_END ;
 int SEEK_SET ;



 int os_fseeki64 (int ,int,int) ;
 int os_ftelli64 (int ) ;

__attribute__((used)) static int64_t file_output_seek(void *sdata, int64_t offset,
    enum serialize_seek_type seek_type)
{
 struct file_output_data *out = sdata;
 int origin = SEEK_SET;

 switch (seek_type) {
 case 128:
  origin = SEEK_SET;
  break;
 case 130:
  origin = SEEK_CUR;
  break;
 case 129:
  origin = SEEK_END;
  break;
 }

 if (os_fseeki64(out->file, offset, origin) == -1)
  return -1;

 return os_ftelli64(out->file);
}
