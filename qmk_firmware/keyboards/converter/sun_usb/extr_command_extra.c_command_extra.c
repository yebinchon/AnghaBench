
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
 int print (char*) ;
 int serial_send (int) ;
 int sun_bell ;
 int sun_click ;
 int xprintf (char*,int) ;

bool command_extra(uint8_t code)
{
    switch (code) {
        case 133:
        case 128:
            print("\n\n----- Sun converter Help -----\n");
            print("Home:        Toggle Bell\n");
            print("End:         Toggle Click\n");
            print("PgUp:        LED all On\n");
            print("PgDown:      LED all Off\n");
            print("Insert:      Layout\n");
            print("Delete:      Reset\n");
            return 0;
        case 135:
            print("Reset\n");
            serial_send(0x01);
            break;
        case 132:
     sun_bell = !sun_bell;
     if (sun_bell) {
                print("Bell On\n");
         serial_send(0x02);
     } else {
         print("Bell Off\n");
         serial_send(0x03);
     }
            break;
        case 134:
     sun_click = !sun_click;
     if (sun_click) {
         print("Click On\n");
  serial_send(0x0A);
     } else {
         print("Click Off\n");
                serial_send(0x0B);
     }
     break;
        case 129:
            print("LED all on\n");
            serial_send(0x0E);
            serial_send(0xFF);
            break;
        case 130:
            print("LED all off\n");
            serial_send(0x0E);
            serial_send(0x00);
            break;
        case 131:
            print("layout\n");
            serial_send(0x0F);
            break;
        default:
            xprintf("Unknown extra command: %02X\n", code);
            return 0;
    }
    return 1;
}
