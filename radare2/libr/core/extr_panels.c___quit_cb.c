
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;


 int QUIT ;
 int __set_root_state (int *,int ) ;

int __quit_cb(void *user) {
 __set_root_state ((RCore *)user, QUIT);
 return 0;
}
