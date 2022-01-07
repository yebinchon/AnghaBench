
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mg_str {int* p; } ;


 int DBG (char*) ;
 char* mg_next_comma_list_entry (char const*,struct mg_str*,int *) ;
 scalar_t__ parse_net (int*,int*,int*) ;

int mg_check_ip_acl(const char *acl, uint32_t remote_ip) {
  int allowed, flag;
  uint32_t net, mask;
  struct mg_str vec;


  allowed = (acl == ((void*)0) || *acl == '\0') ? '+' : '-';

  while ((acl = mg_next_comma_list_entry(acl, &vec, ((void*)0))) != ((void*)0)) {
    flag = vec.p[0];
    if ((flag != '+' && flag != '-') ||
        parse_net(&vec.p[1], &net, &mask) == 0) {
      return -1;
    }

    if (net == (remote_ip & mask)) {
      allowed = flag;
    }
  }

  DBG(("%08x %c", (unsigned int) remote_ip, allowed));
  return allowed == '+';
}
