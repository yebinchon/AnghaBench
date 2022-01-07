
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int do_enable; int enabled; int do_disable; int do_reset; int do_wlan_cycle_power; } ;


 int SERVERS_CYCLE_TIME_MS ;
 int SERVERS_DEF_PASS ;
 int SERVERS_DEF_USER ;
 int ftp_disable () ;
 int ftp_enable () ;
 int ftp_init () ;
 int ftp_reset () ;
 int ftp_run () ;
 int modusocket_close_all_user_sockets () ;
 int modusocket_enter_sleep () ;
 int mp_hal_delay_ms (int) ;
 int pybwdt_srv_alive () ;
 int pybwdt_srv_sleeping (int) ;
 TYPE_1__ servers_data ;
 int servers_pass ;
 int servers_user ;
 int sleep_sockets ;
 int strcpy (int ,int ) ;
 int telnet_disable () ;
 int telnet_enable () ;
 int telnet_init () ;
 int telnet_reset () ;
 int telnet_run () ;
 int wlan_off_on () ;

void TASK_Servers (void *pvParameters) {

    bool cycle = 0;

    strcpy (servers_user, SERVERS_DEF_USER);
    strcpy (servers_pass, SERVERS_DEF_PASS);

    telnet_init();
    ftp_init();

    for ( ;; ) {

        if (servers_data.do_enable) {

            telnet_enable();
            ftp_enable();

            servers_data.enabled = 1;
            servers_data.do_enable = 0;
        }
        else if (servers_data.do_disable) {

            telnet_disable();
            ftp_disable();

            servers_data.do_disable = 0;
            servers_data.enabled = 0;
        }
        else if (servers_data.do_reset) {

            servers_data.do_reset = 0;
            if (servers_data.enabled) {
                telnet_reset();
                ftp_reset();
            }


            modusocket_close_all_user_sockets();
        }

        if (cycle) {
            telnet_run();
        }
        else {
            ftp_run();
        }

        if (sleep_sockets) {
            pybwdt_srv_sleeping(1);
            modusocket_enter_sleep();
            pybwdt_srv_sleeping(0);
            mp_hal_delay_ms(SERVERS_CYCLE_TIME_MS * 2);
            if (servers_data.do_wlan_cycle_power) {
                servers_data.do_wlan_cycle_power = 0;
                wlan_off_on();
            }
            sleep_sockets = 0;

        }


        pybwdt_srv_alive();


        cycle = cycle ? 0 : 1;
        mp_hal_delay_ms(SERVERS_CYCLE_TIME_MS);
    }
}
