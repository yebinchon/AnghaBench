
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;

__attribute__((used)) static bool replace_seq (const char **in, char **out, const char *seq, char value) {
 size_t len = strlen (seq);

 if (strncmp (*in, seq, len)) {
  return 0;
 }

 **out = value;

 *in += len;
 *out += 1;

 return 1;
}
