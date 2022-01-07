
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ buf ;
 scalar_t__ erasesize ;
 int memcpy (scalar_t__,char*,int) ;
 scalar_t__ ofs ;
 int pad (scalar_t__) ;
 int prep_eraseblock () ;

__attribute__((used)) static inline void add_data(char *ptr, int len)
{
 if (ofs + len > erasesize) {
  pad(erasesize);
  prep_eraseblock();
 }
 memcpy(buf + ofs, ptr, len);
 ofs += len;
}
