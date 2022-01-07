
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int keyrecord_t ;


 int disable_action_cache ;
 int process_record (int *) ;

void process_record_nocache(keyrecord_t *record) {
    disable_action_cache = 1;
    process_record(record);
    disable_action_cache = 0;
}
