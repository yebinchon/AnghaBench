
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ KSEG1ADDR (int) ;
 char* strchr (char const*,char) ;
 scalar_t__ strncmp (char const*,char const*,int) ;
 int strnlen (char const*,int) ;

__attribute__((used)) static const char *boot_getenv(const char *key)
{
 const char *start = (const char *) KSEG1ADDR(0x1f070000);
 const char *end = start + 0x20000;
 const char *addr;

 for (addr = start + 4;
      *addr && *addr != 0xff && addr < end &&
      strnlen(addr, end - addr) < end - addr;
      addr += strnlen(addr, end - addr) + 1) {
  const char *val;

  val = strchr(addr, '=');
  if (!val)
   continue;

  if (strncmp(addr, key, val - addr))
   continue;

  return val + 1;
 }
 return ((void*)0);
}
