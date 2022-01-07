
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ mg_time () ;
 scalar_t__ strtoul (char const*,int *,int) ;

__attribute__((used)) static int mg_check_nonce(const char *nonce) {
  unsigned long now = (unsigned long) mg_time();
  unsigned long val = (unsigned long) strtoul(nonce, ((void*)0), 16);
  return (now >= val) && (now - val < 60 * 60);
}
