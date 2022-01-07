
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* SPI_palloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;

__attribute__((used)) static char *
_SPI_strdup(const char *s)
{
 size_t len = strlen(s) + 1;
 char *ret = SPI_palloc(len);

 memcpy(ret, s, len);
 return ret;
}
