
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* PG (int ) ;
 char* SG (int ) ;
 int default_charset ;
 int internal_encoding ;

__attribute__((used)) static char *get_default_charset(void) {
 if (PG(internal_encoding) && PG(internal_encoding)[0]) {
  return PG(internal_encoding);
 } else if (SG(default_charset) && SG(default_charset)[0] ) {
  return SG(default_charset);
 }
 return ((void*)0);
}
