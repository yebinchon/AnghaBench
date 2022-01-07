
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FAULT_SYSTICK ;
 int GPIOA1_BASE ;
 int GPIO_DIR_MODE_OUT ;
 int GPIO_IF_LedConfigure (int ) ;
 int GPIO_IF_LedOn (int ) ;
 int LED1 ;
 int LL_ERROR ;
 int LL_INFO ;
 int LOG (int ,char*) ;
 int MAP_GPIODirModeSet (int ,int,int ) ;
 int MAP_IntEnable (int ) ;
 int MAP_IntMasterEnable () ;
 int MAP_IntVTableBaseSet (unsigned long) ;
 int MAP_PRCMPeripheralClkEnable (int ,int ) ;
 int MAP_PinTypeGPIO (int ,int ,int) ;
 int MCU_RED_LED_GPIO ;
 int MGOS_TASK_PRIORITY ;
 int MG_TASK_STACK_SIZE ;
 int PIN_64 ;
 int PIN_MODE_0 ;
 int PRCMCC3200MCUInit () ;
 int PRCM_GPIOA1 ;
 int PRCM_RUN_MODE_CLK ;
 scalar_t__ VStartSimpleLinkSpawnTask (int) ;
 int _IOLBF ;
 int cs_log_set_file (int ) ;
 int cs_log_set_level (int ) ;
 int * g_pfnVectors ;
 int mg_init ;
 int mg_start_task (int ,int ,int ) ;
 int osi_start () ;
 int setvbuf (int ,int *,int ,int ) ;
 int stderr ;
 int stdout ;

int main(void) {

  MAP_IntVTableBaseSet((unsigned long) &g_pfnVectors[0]);

  MAP_IntEnable(FAULT_SYSTICK);
  MAP_IntMasterEnable();
  PRCMCC3200MCUInit();

  setvbuf(stdout, ((void*)0), _IOLBF, 0);
  setvbuf(stderr, ((void*)0), _IOLBF, 0);
  cs_log_set_level(LL_INFO);
  cs_log_set_file(stdout);

  LOG(LL_INFO, ("Hello, world!"));



  MAP_PRCMPeripheralClkEnable(PRCM_GPIOA1, PRCM_RUN_MODE_CLK);
  MAP_PinTypeGPIO(PIN_64, PIN_MODE_0, 0);
  MAP_GPIODirModeSet(GPIOA1_BASE, 0x2, GPIO_DIR_MODE_OUT);
  GPIO_IF_LedConfigure(LED1);
  GPIO_IF_LedOn(MCU_RED_LED_GPIO);

  if (VStartSimpleLinkSpawnTask(8) != 0) {
    LOG(LL_ERROR, ("Failed to create SL task"));
  }

  if (!mg_start_task(MGOS_TASK_PRIORITY, MG_TASK_STACK_SIZE, mg_init)) {
    LOG(LL_ERROR, ("Failed to create MG task"));
  }

  osi_start();

  return 0;
}
