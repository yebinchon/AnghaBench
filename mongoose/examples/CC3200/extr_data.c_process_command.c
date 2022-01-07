
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_connection {int dummy; } ;


 int GPIO_IF_LedOff (int ) ;
 int GPIO_IF_LedOn (int ) ;
 int GPIO_IF_LedToggle (int ) ;
 int LL_ERROR ;
 int LOG (int ,char*) ;
 int MCU_RED_LED_GPIO ;
 int sscanf (char*,char*,int*,int*) ;

__attribute__((used)) static void process_command(struct mg_connection *nc, unsigned char *data,
                            size_t len) {

  int cmd, val;
  if (sscanf((char *) data, "{\"t\":%d,\"v\":%d}", &cmd, &val) != 2) {
    LOG(LL_ERROR, ("Invalid request: %.*s", (int) len, data));
    return;
  }
  if (cmd == 1) {
    switch (val) {
      case '0': {
        GPIO_IF_LedOff(MCU_RED_LED_GPIO);
        break;
      }
      case '1': {
        GPIO_IF_LedOn(MCU_RED_LED_GPIO);
        break;
      }
      case '2': {
        GPIO_IF_LedToggle(MCU_RED_LED_GPIO);
        break;
      }
      default: {
        LOG(LL_ERROR, ("Invalid value: %.*s", (int) len, data));
        return;
      }
    }
  } else {
    LOG(LL_ERROR, ("Unknown command: %.*s", (int) len, data));
    return;
  }
}
