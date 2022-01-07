
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char VK_ESCAPE ;

__attribute__((used)) static size_t zend_compute_escaped_string_len(const char *s, size_t l) {
 size_t i, len = l;
 for (i = 0; i < l; ++i) {
  char c = s[i];
  if (c == '\n' || c == '\r' || c == '\t' ||
   c == '\f' || c == '\v' || c == '\\' || c == VK_ESCAPE) {
   len += 1;
  } else if (c < 32 || c > 126) {
   len += 3;
  }
 }
 return len;
}
