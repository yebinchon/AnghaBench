
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;


 int __init_almighty_db (int *) ;
 int __init_rotate_db (int *) ;
 int __init_sdb (int *) ;

void __init_all_dbs(RCore *core) {
 __init_sdb (core);
 __init_almighty_db (core);
 __init_rotate_db (core);
}
