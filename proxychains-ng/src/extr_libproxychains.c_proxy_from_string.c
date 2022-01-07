
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rs_proxyType ;





 int atoi (char const*) ;
 int memcpy (char*,char const*,size_t) ;
 char* strchr (char const*,char) ;
 int strcpy (char*,char*) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static int proxy_from_string(const char *proxystring,
 char *type_buf,
 char* host_buf,
 int *port_n,
 char *user_buf,
 char* pass_buf)
{
 const char* p;
 rs_proxyType proxytype;

 size_t next_token = 6, ul = 0, pl = 0, hl;
 if(!proxystring[0] || !proxystring[1] || !proxystring[2] || !proxystring[3] || !proxystring[4] || !proxystring[5]) goto inv_string;
 if(*proxystring == 's') {
  switch(proxystring[5]) {
   case '5': proxytype = 128; break;
   case '4': proxytype = 129; break;
   default: goto inv_string;
  }
 } else if(*proxystring == 'h') {
  proxytype = 130;
  next_token = 4;
 } else goto inv_string;
 if(
    proxystring[next_token++] != ':' ||
    proxystring[next_token++] != '/' ||
    proxystring[next_token++] != '/') goto inv_string;
 const char *at = strrchr(proxystring+next_token, '@');
 if(at) {
  if(proxytype == 129)
   return 0;
  p = strchr(proxystring+next_token, ':');
  if(!p || p >= at) goto inv_string;
  const char *u = proxystring+next_token;
  ul = p-u;
  p++;
  pl = at-p;
  if(proxytype == 128 && (ul > 255 || pl > 255))
   return 0;
  memcpy(user_buf, u, ul);
  user_buf[ul]=0;
  memcpy(pass_buf, p, pl);
  pass_buf[pl]=0;
  next_token += 2+ul+pl;
 } else {
  user_buf[0]=0;
  pass_buf[0]=0;
 }
 const char* h = proxystring+next_token;
 p = strchr(h, ':');
 if(!p) goto inv_string;
 hl = p-h;
 if(hl > 255)
  return 0;
 memcpy(host_buf, h, hl);
 host_buf[hl]=0;
 *port_n = atoi(p+1);
 switch(proxytype) {
  case 129:
   strcpy(type_buf, "socks4");
   break;
  case 128:
   strcpy(type_buf, "socks5");
   break;
  case 130:
   strcpy(type_buf, "http");
   break;
  default:
   return 0;
 }
 return 1;
inv_string:
 return 0;
}
