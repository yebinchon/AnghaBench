
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* delspc (char const*) ;
 char mem_delimiter ;
 char const* readword ;
 int skipword (char const**,char) ;

__attribute__((used)) static int rd_word(const char **p, char delimiter) {
 *p = delspc (*p);
 if (**p == 0) {
  return 0;
 }
 readword = *p;
 mem_delimiter = delimiter;
 skipword (p, delimiter);
 return 1;
}
