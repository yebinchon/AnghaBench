
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,char) ;

__attribute__((used)) static int getid (char ch) {
 const char *keys = "[]<>+-,.";
 const char *cidx = strchr (keys, ch);
 return cidx? cidx - keys + 1: 0;
}
