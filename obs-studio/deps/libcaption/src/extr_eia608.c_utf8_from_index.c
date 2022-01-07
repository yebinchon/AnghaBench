
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EIA608_CHAR_COUNT ;
 char const** eia608_char_map ;

__attribute__((used)) static const char* utf8_from_index(int idx) { return (0 <= idx && EIA608_CHAR_COUNT > idx) ? eia608_char_map[idx] : ""; }
