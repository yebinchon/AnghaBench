
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*,unsigned short) ;
 int try_outb (unsigned short) ;

__attribute__((used)) static void expect_ok(unsigned short port)
{
 if (!try_outb(port)) {
  printf("[FAIL]\toutb to 0x%02hx failed\n", port);
  exit(1);
 }

 printf("[OK]\toutb to 0x%02hx worked\n", port);
}
