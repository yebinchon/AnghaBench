
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char*) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static void
bypass_doubledash(char **p)
{
    if (strlen(*p) >= 3 && !strncmp(*p, "--", 2))
    {
        *p += 2;
    }
}
