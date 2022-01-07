
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int crc32 (int,char*,size_t) ;

__attribute__((used)) static inline unsigned int crc32buf(char *buf, size_t len)
{
 return crc32(0xFFFFFFFF, buf, len);
}
