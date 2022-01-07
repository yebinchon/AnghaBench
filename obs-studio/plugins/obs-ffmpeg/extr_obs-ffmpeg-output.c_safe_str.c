
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline const char *safe_str(const char *s)
{
 if (s == ((void*)0))
  return "(NULL)";
 else
  return s;
}
