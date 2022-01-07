
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char*) ;
 int strncmp (char*,char*,int ) ;

__attribute__((used)) static inline int startswith (char *source, char *cmp)
{
 return !strncmp(source, cmp, strlen(cmp));
}
