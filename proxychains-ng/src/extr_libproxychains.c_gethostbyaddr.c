
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {char* h_name; char** h_addr_list; char** h_aliases; int h_length; int h_addrtype; } ;
typedef int socklen_t ;


 int AF_INET ;
 int INIT () ;
 int PDEBUG (char*,...) ;
 int memcpy (char*,void const*,int) ;
 int pc_stringfromipv4 (unsigned char*,char*) ;
 int proxychains_resolver ;
 struct hostent* true_gethostbyaddr (void const*,int,int) ;

struct hostent *gethostbyaddr(const void *addr, socklen_t len, int type) {
 INIT();
 PDEBUG("TODO: proper gethostbyaddr hook\n");

 static char buf[16];
 static char ipv4[4];
 static char *list[2];
 static char *aliases[1];
 static struct hostent he;

 if(!proxychains_resolver)
  return true_gethostbyaddr(addr, len, type);
 else {

  PDEBUG("len %u\n", len);
  if(len != 4)
   return ((void*)0);
  he.h_name = buf;
  memcpy(ipv4, addr, 4);
  list[0] = ipv4;
  list[1] = ((void*)0);
  he.h_addr_list = list;
  he.h_addrtype = AF_INET;
  aliases[0] = ((void*)0);
  he.h_aliases = aliases;
  he.h_length = 4;
  pc_stringfromipv4((unsigned char *) addr, buf);
  return &he;
 }
 return ((void*)0);
}
