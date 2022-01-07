
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int delay; } ;



__attribute__((used)) static void movecb(void *addr, int delta)
{
    struct priv *p = addr;
    p->delay -= delta;
}
