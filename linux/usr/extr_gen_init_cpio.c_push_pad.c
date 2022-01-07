
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int offset ;
 int putchar (int ) ;

__attribute__((used)) static void push_pad (void)
{
 while (offset & 3) {
  putchar(0);
  offset++;
 }
}
