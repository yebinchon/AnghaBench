
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int is_stream_path(const char *filename)
{
 const char *p;

 for (p = filename;
      (*p >= 'a' && *p <= 'z') ||
      (*p >= 'A' && *p <= 'Z') ||
      (*p >= '0' && *p <= '9') ||
      *p == '+' || *p == '-' || *p == '.';
      p++);
 return ((p != filename) && (p[0] == ':') && (p[1] == '/') && (p[2] == '/'));
}
