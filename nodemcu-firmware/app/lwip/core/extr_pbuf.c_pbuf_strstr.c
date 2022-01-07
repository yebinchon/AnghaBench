
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16_t ;
struct pbuf {int tot_len; } ;


 size_t os_strlen (char const*) ;
 int pbuf_memfind (struct pbuf*,char const*,int,int ) ;

u16_t
pbuf_strstr(struct pbuf* p, const char* substr)
{
  size_t substr_len;
  if ((substr == ((void*)0)) || (substr[0] == 0) || (p->tot_len == 0xFFFF)) {
    return 0xFFFF;
  }
  substr_len = os_strlen(substr);
  if (substr_len >= 0xFFFF) {
    return 0xFFFF;
  }
  return pbuf_memfind(p, substr, (u16_t)substr_len, 0);
}
