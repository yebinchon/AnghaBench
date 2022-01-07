
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int keyrecord_t ;


 int process_action_user (int *) ;

bool process_action_kb(keyrecord_t *record) {
 return process_action_user(record);
}
