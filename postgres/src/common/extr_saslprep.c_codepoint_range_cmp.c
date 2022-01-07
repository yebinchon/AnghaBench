
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pg_wchar ;



__attribute__((used)) static int
codepoint_range_cmp(const void *a, const void *b)
{
 const pg_wchar *key = (const pg_wchar *) a;
 const pg_wchar *range = (const pg_wchar *) b;

 if (*key < range[0])
  return -1;
 if (*key > range[1])
  return 1;

 return 0;
}
