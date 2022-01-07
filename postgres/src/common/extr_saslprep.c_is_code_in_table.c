
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const pg_wchar ;


 int Assert (int) ;
 scalar_t__ bsearch (scalar_t__ const*,scalar_t__ const*,int,int,int ) ;
 int codepoint_range_cmp ;

__attribute__((used)) static bool
is_code_in_table(pg_wchar code, const pg_wchar *map, int mapsize)
{
 Assert(mapsize % 2 == 0);

 if (code < map[0] || code > map[mapsize - 1])
  return 0;

 if (bsearch(&code, map, mapsize / 2, sizeof(pg_wchar) * 2,
    codepoint_range_cmp))
  return 1;
 else
  return 0;
}
