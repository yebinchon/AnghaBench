
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,int ) ;
 char* strrchr (char*,char) ;
 char* tcc_basename (char const*) ;

char *tcc_fileextension(const char *name)
{
 char *b = tcc_basename (name);
 char *e = strrchr (b, '.');
 return e? e: strchr (b, 0);
}
