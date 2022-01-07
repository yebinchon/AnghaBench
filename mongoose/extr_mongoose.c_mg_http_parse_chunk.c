
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isxdigit (unsigned char) ;
 char tolower (unsigned char) ;

__attribute__((used)) static size_t mg_http_parse_chunk(char *buf, size_t len, char **chunk_data,
                                  size_t *chunk_len) {
  unsigned char *s = (unsigned char *) buf;
  size_t n = 0;
  size_t i = 0;


  while (i < len && isxdigit(s[i])) {
    n *= 16;
    n += (s[i] >= '0' && s[i] <= '9') ? s[i] - '0' : tolower(s[i]) - 'a' + 10;
    i++;
    if (i > 6) {

      return 0;
    }
  }


  if (i == 0 || i + 2 > len || s[i] != '\r' || s[i + 1] != '\n') {
    return 0;
  }
  i += 2;


  *chunk_data = (char *) s + i;
  *chunk_len = n;


  i += n;


  if (i == 0 || i + 2 > len || s[i] != '\r' || s[i + 1] != '\n') {
    return 0;
  }
  return i + 2;
}
