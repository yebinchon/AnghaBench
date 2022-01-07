
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char const*,char const*,char const*) ;

__attribute__((used)) static void print_device(const char *busid, const char *vendor,
    const char *product, bool parsable)
{
 if (parsable)
  printf("busid=%s#usbid=%.4s:%.4s#", busid, vendor, product);
 else
  printf(" - busid %s (%.4s:%.4s)\n", busid, vendor, product);
}
