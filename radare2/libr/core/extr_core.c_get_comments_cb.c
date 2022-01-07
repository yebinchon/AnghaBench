
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int RCore ;


 char* r_core_anal_get_comments (int *,int ) ;

__attribute__((used)) static char *get_comments_cb(void *user, ut64 addr) {
 return r_core_anal_get_comments ((RCore *)user, addr);
}
