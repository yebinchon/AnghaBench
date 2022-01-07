
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int RCore ;


 char* r_core_anal_hasrefs (int *,int ,int) ;

__attribute__((used)) static char *hasrefs_cb(void *user, ut64 addr, bool verbose) {
 return r_core_anal_hasrefs ((RCore *)user, addr, verbose);
}
