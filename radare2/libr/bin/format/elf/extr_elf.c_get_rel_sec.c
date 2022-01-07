
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RBinElfSection ;
typedef int ELFOBJ ;


 int * get_section_by_name (int *,char const*) ;

__attribute__((used)) static RBinElfSection *get_rel_sec(ELFOBJ *bin, const char **sects) {
 RBinElfSection *rel_sec = ((void*)0);
 int j = 0;
 while (!rel_sec && sects[j]) {
  rel_sec = get_section_by_name (bin, sects[j++]);
 }
 return rel_sec;
}
