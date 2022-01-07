
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int RCore ;


 char const* r_core_anal_optype_colorfor (int *,int ,int) ;

__attribute__((used)) static const char *colorfor_cb(void *user, ut64 addr, bool verbose) {
 return r_core_anal_optype_colorfor ((RCore *)user, addr, verbose);
}
