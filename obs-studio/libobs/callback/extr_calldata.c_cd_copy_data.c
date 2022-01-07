
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int memcpy (int *,void const*,size_t) ;

__attribute__((used)) static inline void cd_copy_data(uint8_t **pos, const void *in, size_t size)
{
 memcpy(*pos, &size, sizeof(size_t));
 *pos += sizeof(size_t);

 if (size) {
  memcpy(*pos, in, size);
  *pos += size;
 }
}
