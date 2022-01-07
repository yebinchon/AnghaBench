
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;

void usage(char *prog)
{
 printf("Usage: %s [options]\n", prog);
 printf("  -d	Enable debug error output\n");
 printf("\n");
 printf("This test requires a POWER8 or POWER9 CPU and a usable ");
 printf("framebuffer at /dev/fb0.\n");
}
