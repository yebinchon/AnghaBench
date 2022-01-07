
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {unsigned int vol; } ;



__attribute__((used)) static void volcb(void *addr, unsigned newvol)
{
    struct priv *p = addr;
    p->vol = newvol;
}
