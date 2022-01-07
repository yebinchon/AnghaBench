
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int measurements; int accept_after; int load_threads; int retries; int physical_offset; int load_type; } ;


 int DEFAULT_PHYSICAL_OFFSET ;
 int INFO ;
 int NOP ;
 TYPE_1__ config ;
 int debug (int ,char*) ;
 int detect_fault_handling () ;
 int detect_flush_reload_threshold () ;

__attribute__((used)) static void auto_config() {
  debug(INFO, "Auto configuration\n");
  detect_fault_handling();
  detect_flush_reload_threshold();
  config.measurements = 3;
  config.accept_after = 1;
  config.load_threads = 1;
  config.load_type = NOP;
  config.retries = 10000;
  config.physical_offset = DEFAULT_PHYSICAL_OFFSET;
}
