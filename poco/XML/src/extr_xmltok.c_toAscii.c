
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ENCODING ;


 int XmlUtf8Convert (int const*,char const**,char const*,char**,char*) ;

__attribute__((used)) static int
toAscii(const ENCODING *enc, const char *ptr, const char *end) {
  char buf[1];
  char *p = buf;
  XmlUtf8Convert(enc, &ptr, end, &p, p + 1);
  if (p == buf)
    return -1;
  else
    return buf[0];
}
