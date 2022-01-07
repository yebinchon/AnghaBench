
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 char* names_class (int) ;
 char* names_protocol (int,int,int) ;
 char* names_subclass (int,int) ;
 int snprintf (char*,size_t,char*,...) ;

void usbip_names_get_class(char *buff, size_t size, uint8_t class,
      uint8_t subclass, uint8_t protocol)
{
 const char *c, *s, *p;

 if (class == 0 && subclass == 0 && protocol == 0) {
  snprintf(buff, size, "(Defined at Interface level) (%02x/%02x/%02x)", class, subclass, protocol);
  return;
 }

 p = names_protocol(class, subclass, protocol);
 if (!p)
  p = "unknown protocol";

 s = names_subclass(class, subclass);
 if (!s)
  s = "unknown subclass";

 c = names_class(class);
 if (!c)
  c = "unknown class";

 snprintf(buff, size, "%s / %s / %s (%02x/%02x/%02x)", c, s, p, class, subclass, protocol);
}
