
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getargpos (char const*,int) ;
 size_t strtoul (char const*,int ,int ) ;

__attribute__((used)) static size_t getvalue (const char *buf, int pos) {
 size_t ret;
 buf = getargpos (buf, pos);
 if (buf) {
  ret = strtoul (buf, 0, 0);
 } else {
  ret = -1;
 }
 return ret;
}
