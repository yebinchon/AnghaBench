
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char toupper (char) ;

void
strtoupper(char *p)
{
    if(!p)
        return;
    for (; *p; p++)
        *p = toupper (*p);
}
