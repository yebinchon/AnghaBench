
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONSOLE_BAUD_RATE ;
 int CONSOLE_UART ;
 int CONSOLE_UART_PERIPH ;
 int FAULT_SYSTICK ;
 int GPIOA1_BASE ;
 int GPIO_DIR_MODE_OUT ;
 int GPIO_IF_LedConfigure (int ) ;
 int GPIO_IF_LedOn (int ) ;
 int I2C_IF_Open (int ) ;
 int I2C_MASTER_MODE_FST ;
 int LED1 ;
 int LL_ERROR ;
 int LL_INFO ;
 int LOG (int ,char*) ;
 int MAP_GPIODirModeSet (int ,int,int ) ;
 int MAP_IntEnable (int ) ;
 int MAP_IntMasterEnable () ;
 int MAP_IntVTableBaseSet (unsigned long) ;
 int MAP_PRCMPeripheralClkEnable (int ,int ) ;
 int MAP_PRCMPeripheralClockGet (int ) ;
 int MAP_PinTypeGPIO (int ,int ,int) ;
 int MAP_PinTypeI2C (int ,int ) ;
 int MAP_PinTypeUART (int ,int ) ;
 int MAP_UARTConfigSetExpClk (int ,int ,int ,int) ;
 int MAP_UARTFIFOEnable (int ) ;
 int MAP_UARTFIFOLevelSet (int ,int ,int ) ;
 int MCU_RED_LED_GPIO ;
 int MGOS_TASK_PRIORITY ;
 int MG_TASK_STACK_SIZE ;
 int PIN_01 ;
 int PIN_02 ;
 int PIN_55 ;
 int PIN_57 ;
 int PIN_64 ;
 int PIN_MODE_0 ;
 int PIN_MODE_1 ;
 int PIN_MODE_3 ;
 int PRCMCC3200MCUInit () ;
 int PRCM_GPIOA1 ;
 int PRCM_RUN_MODE_CLK ;
 int UART_CONFIG_PAR_NONE ;
 int UART_CONFIG_STOP_ONE ;
 int UART_CONFIG_WLEN_8 ;
 int UART_FIFO_RX4_8 ;
 int UART_FIFO_TX1_8 ;
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


  MAP_PRCMPeripheralClkEnable(CONSOLE_UART_PERIPH, PRCM_RUN_MODE_CLK);
  MAP_PinTypeUART(PIN_55, PIN_MODE_3);
  MAP_PinTypeUART(PIN_57, PIN_MODE_3);
  MAP_UARTConfigSetExpClk(
      CONSOLE_UART, MAP_PRCMPeripheralClockGet(CONSOLE_UART_PERIPH),
      CONSOLE_BAUD_RATE,
      (UART_CONFIG_WLEN_8 | UART_CONFIG_STOP_ONE | UART_CONFIG_PAR_NONE));
  MAP_UARTFIFOLevelSet(CONSOLE_UART, UART_FIFO_TX1_8, UART_FIFO_RX4_8);
  MAP_UARTFIFOEnable(CONSOLE_UART);

  setvbuf(stdout, ((void*)0), _IOLBF, 0);
  setvbuf(stderr, ((void*)0), _IOLBF, 0);
  cs_log_set_level(LL_INFO);
  cs_log_set_file(stdout);

  LOG(LL_INFO, ("Hello, world!"));

  MAP_PinTypeI2C(PIN_01, PIN_MODE_1);
  MAP_PinTypeI2C(PIN_02, PIN_MODE_1);
  I2C_IF_Open(I2C_MASTER_MODE_FST);



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
