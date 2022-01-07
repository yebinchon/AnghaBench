
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int memcpy (size_t*,int *,int) ;

__attribute__((used)) static inline size_t cd_serialize_size(uint8_t **pos)
{
 size_t size = 0;
 memcpy(&size, *pos, sizeof(size_t));
 *pos += sizeof(size_t);
 return size;
}
