
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char*) ;

__attribute__((used)) static inline bool isXNU(const char *os) {
 return (!strcmp (os, "darwin") || !strcmp (os, "macos")
  || !strcmp (os, "tvos") || !strcmp (os, "watchos") || !strcmp (os, "ios"));
}
