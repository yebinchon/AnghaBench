
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* calloc (int,int) ;
 int memcpy (char*,char*,int) ;
 int strcspn (char*,char const*) ;
 int strlen (char const*) ;
 int strspn (char*,char const*) ;

__attribute__((used)) static int tokenize(const char* in, char* out[]) {
 int len = strlen (in), count = 0, i = 0, tokenlen = 0, seplen = 0;
 char *token, *buf = (char*) in;
 const char* tokcharset = ", \t\n";

 while (i < len) {
  tokenlen = strcspn (buf, tokcharset);
  token = calloc (tokenlen + 1, sizeof(char));
  memcpy (token, buf, tokenlen);
  out[count] = token;
  i += tokenlen;
  buf += tokenlen;
  count++;

  seplen = strspn (buf, tokcharset);
  i += seplen;
  buf += seplen;
 }

 return count;
}
