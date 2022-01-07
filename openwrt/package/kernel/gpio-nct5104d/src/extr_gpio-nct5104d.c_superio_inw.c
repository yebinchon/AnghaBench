
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inb (int) ;
 int outb (int,int) ;

__attribute__((used)) static int superio_inw(int base, int reg)
{
 int val;

 outb(reg++, base);
 val = inb(base + 1) << 8;
 outb(reg, base);
 val |= inb(base + 1);

 return val;
}
