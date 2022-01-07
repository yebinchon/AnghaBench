
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* MD5FileChunk (char const*,char*,int ,int ) ;

char *MD5File(const char *filename, char *buf)
{
  return (MD5FileChunk(filename, buf, 0, 0));
}
