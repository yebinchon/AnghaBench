
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;
typedef enum serialize_seek_type { ____Placeholder_serialize_seek_type } serialize_seek_type ;


 int SEEK_CUR ;
 int SEEK_END ;
 int SEEK_SET ;



 int os_fseeki64 (void*,int,int) ;
 int os_ftelli64 (void*) ;

__attribute__((used)) static int64_t file_input_seek(void *file, int64_t offset,
          enum serialize_seek_type seek_type)
{
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

 if (os_fseeki64(file, offset, origin) == -1)
  return -1;

 return os_ftelli64(file);
}
