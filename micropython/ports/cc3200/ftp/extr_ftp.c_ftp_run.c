
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int ftp_result_t ;
typedef int _i32 ;
struct TYPE_3__ {int uservalid; int passvalid; } ;
struct TYPE_4__ {int state; scalar_t__ lc_sd; scalar_t__ c_sd; int substate; scalar_t__ d_sd; int special_file; scalar_t__ ld_sd; int dtimeout; scalar_t__ dBuffer; int ctimeout; TYPE_1__ loggin; int logginRetries; int txRetries; } ;


 int E_FTP_RESULT_CONTINUE ;
 int E_FTP_RESULT_FAILED ;
 int E_FTP_RESULT_OK ;
 int FTP_BUFFER_SIZE ;
 int FTP_CMD_CLIENTS_MAX ;
 int FTP_CMD_PORT ;
 int FTP_CYCLE_TIME_MS ;
 int FTP_DATA_TIMEOUT_MS ;
 int SOCKETFIFO_IsEmpty () ;
 int ftp_close_files () ;
 int ftp_close_filesystem_on_error () ;
 int ftp_create_listening_socket (scalar_t__*,int ,int ) ;
 TYPE_2__ ftp_data ;
 int ftp_list_dir (char*,int ,int *) ;
 int ftp_path ;
 int ftp_process_cmd () ;
 int ftp_read_file (char*,int ,int *) ;
 int ftp_recv_non_blocking (scalar_t__,scalar_t__,int ,int *) ;
 int ftp_send_data (int ) ;
 int ftp_send_from_fifo () ;
 int ftp_send_reply (int,char*) ;
 int ftp_wait_for_connection (scalar_t__,scalar_t__*) ;
 int ftp_wait_for_enabled () ;
 int ftp_write_file (char*,int ) ;
 int servers_close_socket (scalar_t__*) ;
 int strcpy (int ,char*) ;
 int updater_finnish () ;
 int updater_write (scalar_t__,int ) ;
 int wlan_is_connected () ;

void ftp_run (void) {
    switch (ftp_data.state) {
        case 134:
            ftp_wait_for_enabled();
            break;
        case 131:
            if (wlan_is_connected() && ftp_create_listening_socket(&ftp_data.lc_sd, FTP_CMD_PORT, FTP_CMD_CLIENTS_MAX - 1)) {
                ftp_data.state = 132;
            }
            break;
        case 132:
            if (ftp_data.c_sd < 0 && ftp_data.substate == 129) {
                if (E_FTP_RESULT_OK == ftp_wait_for_connection(ftp_data.lc_sd, &ftp_data.c_sd)) {
                    ftp_data.txRetries = 0;
                    ftp_data.logginRetries = 0;
                    ftp_data.ctimeout = 0;
                    ftp_data.loggin.uservalid = 0;
                    ftp_data.loggin.passvalid = 0;
                    strcpy (ftp_path, "/");
                    ftp_send_reply (220, "MicroPython FTP Server");
                    break;
                }
            }
            if (SOCKETFIFO_IsEmpty()) {
                if (ftp_data.c_sd > 0 && ftp_data.substate != 128) {
                    ftp_process_cmd();
                    if (ftp_data.state != 132) {
                        break;
                    }
                }
            }
            break;
        case 133:
            break;
        case 135:

            if (SOCKETFIFO_IsEmpty()) {
                uint32_t listsize;
                ftp_list_dir((char *)ftp_data.dBuffer, FTP_BUFFER_SIZE, &listsize);
                if (listsize > 0) {
                    ftp_send_data(listsize);
                } else {
                    ftp_send_reply(226, ((void*)0));
                    ftp_data.state = 133;
                }
                ftp_data.ctimeout = 0;
            }
            break;
        case 136:

            if (SOCKETFIFO_IsEmpty()) {
                uint32_t readsize;
                ftp_result_t result;
                ftp_data.ctimeout = 0;
                result = ftp_read_file ((char *)ftp_data.dBuffer, FTP_BUFFER_SIZE, &readsize);
                if (result == E_FTP_RESULT_FAILED) {
                    ftp_send_reply(451, ((void*)0));
                    ftp_data.state = 133;
                }
                else {
                    if (readsize > 0) {
                        ftp_send_data(readsize);
                    }
                    if (result == E_FTP_RESULT_OK) {
                        ftp_send_reply(226, ((void*)0));
                        ftp_data.state = 133;
                    }
                }
            }
            break;
        case 137:
            if (SOCKETFIFO_IsEmpty()) {
                _i32 len;
                ftp_result_t result;
                if (E_FTP_RESULT_OK == (result = ftp_recv_non_blocking(ftp_data.d_sd, ftp_data.dBuffer, FTP_BUFFER_SIZE, &len))) {
                    ftp_data.dtimeout = 0;
                    ftp_data.ctimeout = 0;

                    if (ftp_data.special_file) {
                        if (updater_write(ftp_data.dBuffer, len)) {
                            break;
                        }
                    }

                    else if (E_FTP_RESULT_OK == ftp_write_file ((char *)ftp_data.dBuffer, len)) {
                        break;
                    }
                    ftp_send_reply(451, ((void*)0));
                    ftp_data.state = 133;
                }
                else if (result == E_FTP_RESULT_CONTINUE) {
                    if (ftp_data.dtimeout++ > FTP_DATA_TIMEOUT_MS / FTP_CYCLE_TIME_MS) {
                        ftp_close_files();
                        ftp_send_reply(426, ((void*)0));
                        ftp_data.state = 133;
                    }
                }
                else {
                    if (ftp_data.special_file) {
                        ftp_data.special_file = 0;
                        updater_finnish();
                    }
                    ftp_close_files();
                    ftp_send_reply(226, ((void*)0));
                    ftp_data.state = 133;
                }
            }
            break;
        default:
            break;
    }

    switch (ftp_data.substate) {
    case 129:
        break;
    case 128:
        if (E_FTP_RESULT_OK == ftp_wait_for_connection(ftp_data.ld_sd, &ftp_data.d_sd)) {
            ftp_data.dtimeout = 0;
            ftp_data.substate = 130;
        }
        else if (ftp_data.dtimeout++ > FTP_DATA_TIMEOUT_MS / FTP_CYCLE_TIME_MS) {
            ftp_data.dtimeout = 0;

            servers_close_socket(&ftp_data.ld_sd);
            ftp_data.substate = 129;
        }
        break;
    case 130:
        if (ftp_data.state == 132 && ftp_data.dtimeout++ > FTP_DATA_TIMEOUT_MS / FTP_CYCLE_TIME_MS) {

            servers_close_socket(&ftp_data.ld_sd);
            servers_close_socket(&ftp_data.d_sd);
            ftp_close_filesystem_on_error ();
            ftp_data.substate = 129;
        }
        break;
    default:
        break;
    }


    ftp_send_from_fifo();


    if (ftp_data.d_sd < 0 && (ftp_data.state > 132)) {
        ftp_data.substate = 129;
        ftp_data.state = 132;
    }
}
