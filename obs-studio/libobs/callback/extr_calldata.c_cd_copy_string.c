
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int memcpy (int *,...) ;
 int strlen (char const*) ;

__attribute__((used)) static inline void cd_copy_string(uint8_t **pos, const char *str, size_t len)
{
 if (!len)
  len = strlen(str) + 1;

 memcpy(*pos, &len, sizeof(size_t));
 *pos += sizeof(size_t);
 memcpy(*pos, str, len);
 *pos += len;
}
