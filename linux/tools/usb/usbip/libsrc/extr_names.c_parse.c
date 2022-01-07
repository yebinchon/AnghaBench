
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int FILE ;


 int dbg (char*,unsigned int,int,...) ;
 int err (char*,unsigned int,...) ;
 scalar_t__ fgets (char*,int,int *) ;
 scalar_t__ isspace (char) ;
 scalar_t__ isxdigit (char) ;
 scalar_t__ new_class (char*,unsigned int) ;
 scalar_t__ new_product (char*,int,unsigned int) ;
 scalar_t__ new_protocol (char*,int,int,unsigned int) ;
 scalar_t__ new_subclass (char*,int,unsigned int) ;
 scalar_t__ new_vendor (char*,unsigned int) ;
 char* strchr (char*,char) ;
 unsigned int strtoul (char*,char**,int) ;

__attribute__((used)) static void parse(FILE *f)
{
 char buf[512], *cp;
 unsigned int linectr = 0;
 int lastvendor = -1;
 int lastclass = -1;
 int lastsubclass = -1;
 int lasthut = -1;
 int lastlang = -1;
 unsigned int u;

 while (fgets(buf, sizeof(buf), f)) {
  linectr++;

  cp = strchr(buf, '\r');
  if (cp)
   *cp = 0;
  cp = strchr(buf, '\n');
  if (cp)
   *cp = 0;
  if (buf[0] == '#' || !buf[0])
   continue;
  cp = buf;
  if (buf[0] == 'P' && buf[1] == 'H' && buf[2] == 'Y' &&
      buf[3] == 'S' && buf[4] == 'D' &&
      buf[5] == 'E' && buf[6] == 'S' &&
      buf[7] == ' ') {
   continue;
  }
  if (buf[0] == 'P' && buf[1] == 'H' &&
      buf[2] == 'Y' && buf[3] == ' ') {
   continue;
  }
  if (buf[0] == 'B' && buf[1] == 'I' && buf[2] == 'A' &&
      buf[3] == 'S' && buf[4] == ' ') {
   continue;
  }
  if (buf[0] == 'L' && buf[1] == ' ') {
   lasthut = lastclass = lastvendor = lastsubclass = -1;




   lastlang = 1;
   continue;
  }
  if (buf[0] == 'C' && buf[1] == ' ') {

   cp = buf+2;
   while (isspace(*cp))
    cp++;
   if (!isxdigit(*cp)) {
    err("Invalid class spec at line %u", linectr);
    continue;
   }
   u = strtoul(cp, &cp, 16);
   while (isspace(*cp))
    cp++;
   if (!*cp) {
    err("Invalid class spec at line %u", linectr);
    continue;
   }
   if (new_class(cp, u))
    err("Duplicate class spec at line %u class %04x %s",
        linectr, u, cp);
   dbg("line %5u class %02x %s", linectr, u, cp);
   lasthut = lastlang = lastvendor = lastsubclass = -1;
   lastclass = u;
   continue;
  }
  if (buf[0] == 'A' && buf[1] == 'T' && isspace(buf[2])) {

   continue;
  }
  if (buf[0] == 'H' && buf[1] == 'C' && buf[2] == 'C'
      && isspace(buf[3])) {

   continue;
  }
  if (isxdigit(*cp)) {

   u = strtoul(cp, &cp, 16);
   while (isspace(*cp))
    cp++;
   if (!*cp) {
    err("Invalid vendor spec at line %u", linectr);
    continue;
   }
   if (new_vendor(cp, u))
    err("Duplicate vendor spec at line %u vendor %04x %s",
        linectr, u, cp);
   dbg("line %5u vendor %04x %s", linectr, u, cp);
   lastvendor = u;
   lasthut = lastlang = lastclass = lastsubclass = -1;
   continue;
  }
  if (buf[0] == '\t' && isxdigit(buf[1])) {

   u = strtoul(buf+1, &cp, 16);
   while (isspace(*cp))
    cp++;
   if (!*cp) {
    err("Invalid product/subclass spec at line %u",
        linectr);
    continue;
   }
   if (lastvendor != -1) {
    if (new_product(cp, lastvendor, u))
     err("Duplicate product spec at line %u product %04x:%04x %s",
         linectr, lastvendor, u, cp);
    dbg("line %5u product %04x:%04x %s", linectr,
        lastvendor, u, cp);
    continue;
   }
   if (lastclass != -1) {
    if (new_subclass(cp, lastclass, u))
     err("Duplicate subclass spec at line %u class %02x:%02x %s",
         linectr, lastclass, u, cp);
    dbg("line %5u subclass %02x:%02x %s", linectr,
        lastclass, u, cp);
    lastsubclass = u;
    continue;
   }
   if (lasthut != -1) {

    continue;
   }
   if (lastlang != -1) {

    continue;
   }
   err("Product/Subclass spec without prior Vendor/Class spec at line %u",
       linectr);
   continue;
  }
  if (buf[0] == '\t' && buf[1] == '\t' && isxdigit(buf[2])) {

   u = strtoul(buf+2, &cp, 16);
   while (isspace(*cp))
    cp++;
   if (!*cp) {
    err("Invalid protocol spec at line %u",
        linectr);
    continue;
   }
   if (lastclass != -1 && lastsubclass != -1) {
    if (new_protocol(cp, lastclass, lastsubclass,
       u))
     err("Duplicate protocol spec at line %u class %02x:%02x:%02x %s",
         linectr, lastclass, lastsubclass,
         u, cp);
    dbg("line %5u protocol %02x:%02x:%02x %s",
        linectr, lastclass, lastsubclass, u, cp);
    continue;
   }
   err("Protocol spec without prior Class and Subclass spec at line %u",
       linectr);
   continue;
  }
  if (buf[0] == 'H' && buf[1] == 'I' &&
      buf[2] == 'D' && buf[3] == ' ') {
   continue;
  }
  if (buf[0] == 'H' && buf[1] == 'U' &&
      buf[2] == 'T' && buf[3] == ' ') {
   lastlang = lastclass = lastvendor = lastsubclass = -1;




   lasthut = 1;
   continue;
  }
  if (buf[0] == 'R' && buf[1] == ' ')
   continue;

  if (buf[0] == 'V' && buf[1] == 'T')
   continue;

  err("Unknown line at line %u", linectr);
 }
}
