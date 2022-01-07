
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int memcpy (void*,int *,size_t) ;

__attribute__((used)) static inline void cd_serialize(uint8_t **pos, void *ptr, size_t size)
{
 memcpy(ptr, *pos, size);
 *pos += size;
}
