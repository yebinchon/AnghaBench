
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char TOLOWER_ASC (char) ;
 int strlen (char*) ;

char *
vms_tolower( char *name )
{
    int i,nlen = strlen(name);
    for (i = 0; i < nlen; i++)
 name[i] = TOLOWER_ASC(name[i]);
    return name;
}
