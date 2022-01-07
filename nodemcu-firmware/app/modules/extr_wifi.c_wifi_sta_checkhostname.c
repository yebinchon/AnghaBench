
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isalnum (char const) ;

__attribute__((used)) static bool wifi_sta_checkhostname(const char *hostname, size_t len)
{

  if (len == 0 || len > 32 || !isalnum(hostname[0]) || !isalnum(hostname[len-1])){
    return 0;
  }

  for (int i=1; i<len; i++){
    if (!(isalnum(hostname[i]) || hostname[i]=='-')){
      return 0;
    }
  }

  return 1;
}
