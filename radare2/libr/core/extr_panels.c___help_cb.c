
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;


 int __toggle_help (int *) ;

int __help_cb(void *user) {
 RCore *core = (RCore *)user;
 __toggle_help (core);
 return 0;
}
