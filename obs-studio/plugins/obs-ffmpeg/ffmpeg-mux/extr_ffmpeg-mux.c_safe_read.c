
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 size_t fread (int *,int,size_t,int ) ;
 int stdin ;

__attribute__((used)) static size_t safe_read(void *vdata, size_t size)
{
 uint8_t *data = vdata;
 size_t total = size;

 while (size > 0) {
  size_t in_size = fread(data, 1, size, stdin);
  if (in_size == 0)
   return 0;

  size -= in_size;
  data += in_size;
 }

 return total;
}
