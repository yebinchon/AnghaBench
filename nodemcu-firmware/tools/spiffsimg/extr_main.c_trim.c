
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char) ;

char *trim (char *in)
{
  if (!in)
    return "";

  char *out = 0;
  while (*in)
  {
    if (!out && !isspace (*in))
      out = in;
    ++in;
  }
  if (!out)
    return "";
  while (--in > out && isspace (*in))
    ;
  in[1] = 0;
  return out;
}
