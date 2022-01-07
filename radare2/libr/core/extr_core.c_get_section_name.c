
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int RCore ;


 char const* r_core_get_section_name (int *,int ) ;

__attribute__((used)) static const char *get_section_name(void *user, ut64 addr) {
 return r_core_get_section_name ((RCore *)user, addr);
}
