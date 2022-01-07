
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 size_t cd_serialize_size (int **) ;

__attribute__((used)) static inline const char *cd_serialize_string(uint8_t **pos)
{
 size_t size = cd_serialize_size(pos);
 const char *str = (const char *)*pos;

 *pos += size;

 return (size != 0) ? str : ((void*)0);
}
