
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Board_initGPIO () ;
 int Board_initGeneral () ;
 int Board_initWiFi () ;
 int LL_ERROR ;
 int LL_INFO ;
 int LOG (int ,char*) ;
 int MGOS_TASK_PRIORITY ;
 int MG_TASK_STACK_SIZE ;
 int _IOLBF ;
 int cs_log_set_file (int ) ;
 int cs_log_set_level (int ) ;
 int mg_init ;
 int mg_start_task (int ,int ,int ) ;
 int osi_start () ;
 int setvbuf (int ,int *,int ,int ) ;
 int stderr ;
 int stdout ;

int main(void) {
  Board_initGeneral();
  Board_initGPIO();
  Board_initWiFi();

  setvbuf(stdout, ((void*)0), _IOLBF, 0);
  setvbuf(stderr, ((void*)0), _IOLBF, 0);
  cs_log_set_level(LL_INFO);
  cs_log_set_file(stdout);

  if (!mg_start_task(MGOS_TASK_PRIORITY, MG_TASK_STACK_SIZE, mg_init)) {
    LOG(LL_ERROR, ("Error starting Mongoose task"));
    return 1;
  }

  osi_start();

  return 0;
}
