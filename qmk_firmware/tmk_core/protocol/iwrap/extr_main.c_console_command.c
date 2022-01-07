
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int PCICR ;
 int PCMSK1 ;
 int WD_AVR_RESET () ;
 int change_driver (int ) ;
 int disable_vusb () ;
 int init_vusb () ;
 int insomniac ;
 int iwrap_call () ;
 int iwrap_driver () ;
 int iwrap_kill () ;
 int iwrap_unpair () ;
 int print (char*) ;
 int vusb_driver () ;

__attribute__((used)) static bool console_command(uint8_t c) {
    switch (c) {
        case 'h':
        case '?':
            print("\nCommands for Bluetooth(WT12/iWRAP):\n");
            print("r: reset. software reset by watchdog\n");
            print("i: insomniac. prevent KB from sleeping\n");
            print("c: iwrap_call. CALL for BT connection.\n");




            print("k: kill first connection.\n");
            print("Del: unpair first pairing.\n");
            print("\n");
            return 0;
        case 'r':
            print("reset\n");
            WD_AVR_RESET();
            return 1;
        case 'i':
            insomniac = !insomniac;
            if (insomniac)
                print("insomniac\n");
            else
                print("not insomniac\n");
            return 1;
        case 'c':
            print("iwrap_call()\n");
            iwrap_call();
            return 1;
        case 'k':
            print("kill\n");
            iwrap_kill();
            return 1;
        case 0x7F:
            print("unpair\n");
            iwrap_unpair();
            return 1;
    }
    return 0;
}
