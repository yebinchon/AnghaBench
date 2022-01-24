#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  ftp_result_t ;
typedef  int /*<<< orphan*/  _i32 ;
struct TYPE_3__ {int uservalid; int passvalid; } ;
struct TYPE_4__ {int state; scalar_t__ lc_sd; scalar_t__ c_sd; int substate; scalar_t__ d_sd; int special_file; scalar_t__ ld_sd; int /*<<< orphan*/  dtimeout; scalar_t__ dBuffer; int /*<<< orphan*/  ctimeout; TYPE_1__ loggin; int /*<<< orphan*/  logginRetries; int /*<<< orphan*/  txRetries; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_FTP_RESULT_CONTINUE ; 
 int /*<<< orphan*/  E_FTP_RESULT_FAILED ; 
 int /*<<< orphan*/  E_FTP_RESULT_OK ; 
#define  E_FTP_STE_CONTINUE_FILE_RX 137 
#define  E_FTP_STE_CONTINUE_FILE_TX 136 
#define  E_FTP_STE_CONTINUE_LISTING 135 
#define  E_FTP_STE_DISABLED 134 
#define  E_FTP_STE_END_TRANSFER 133 
#define  E_FTP_STE_READY 132 
#define  E_FTP_STE_START 131 
#define  E_FTP_STE_SUB_DATA_CONNECTED 130 
#define  E_FTP_STE_SUB_DISCONNECTED 129 
#define  E_FTP_STE_SUB_LISTEN_FOR_DATA 128 
 int /*<<< orphan*/  FTP_BUFFER_SIZE ; 
 int /*<<< orphan*/  FTP_CMD_CLIENTS_MAX ; 
 int /*<<< orphan*/  FTP_CMD_PORT ; 
 int FTP_CYCLE_TIME_MS ; 
 int FTP_DATA_TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ ftp_data ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ftp_path ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int,char*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 () ; 

void FUNC19 (void) {
    switch (ftp_data.state) {
        case E_FTP_STE_DISABLED:
            FUNC12();
            break;
        case E_FTP_STE_START:
            if (FUNC18() && FUNC3(&ftp_data.lc_sd, FTP_CMD_PORT, FTP_CMD_CLIENTS_MAX - 1)) {
                ftp_data.state = E_FTP_STE_READY;
            }
            break;
        case E_FTP_STE_READY:
            if (ftp_data.c_sd < 0 && ftp_data.substate == E_FTP_STE_SUB_DISCONNECTED) {
                if (E_FTP_RESULT_OK == FUNC11(ftp_data.lc_sd, &ftp_data.c_sd)) {
                    ftp_data.txRetries = 0;
                    ftp_data.logginRetries = 0;
                    ftp_data.ctimeout = 0;
                    ftp_data.loggin.uservalid = false;
                    ftp_data.loggin.passvalid = false;
                    FUNC15 (ftp_path, "/");
                    FUNC10 (220, "MicroPython FTP Server");
                    break;
                }
            }
            if (FUNC0()) {
                if (ftp_data.c_sd > 0 && ftp_data.substate != E_FTP_STE_SUB_LISTEN_FOR_DATA) {
                    FUNC5();
                    if (ftp_data.state != E_FTP_STE_READY) {
                        break;
                    }
                }
            }
            break;
        case E_FTP_STE_END_TRANSFER:
            break;
        case E_FTP_STE_CONTINUE_LISTING:
            // go on with listing only if the transmit buffer is empty
            if (FUNC0()) {
                uint32_t listsize;
                FUNC4((char *)ftp_data.dBuffer, FTP_BUFFER_SIZE, &listsize);
                if (listsize > 0) {
                    FUNC8(listsize);
                } else {
                    FUNC10(226, NULL);
                    ftp_data.state = E_FTP_STE_END_TRANSFER;
                }
                ftp_data.ctimeout = 0;
            }
            break;
        case E_FTP_STE_CONTINUE_FILE_TX:
            // read the next block from the file only if the previous one has been sent
            if (FUNC0()) {
                uint32_t readsize;
                ftp_result_t result;
                ftp_data.ctimeout = 0;
                result = FUNC6 ((char *)ftp_data.dBuffer, FTP_BUFFER_SIZE, &readsize);
                if (result == E_FTP_RESULT_FAILED) {
                    FUNC10(451, NULL);
                    ftp_data.state = E_FTP_STE_END_TRANSFER;
                }
                else {
                    if (readsize > 0) {
                        FUNC8(readsize);
                    }
                    if (result == E_FTP_RESULT_OK) {
                        FUNC10(226, NULL);
                        ftp_data.state = E_FTP_STE_END_TRANSFER;
                    }
                }
            }
            break;
        case E_FTP_STE_CONTINUE_FILE_RX:
            if (FUNC0()) {
                _i32 len;
                ftp_result_t result;
                if (E_FTP_RESULT_OK == (result = FUNC7(ftp_data.d_sd, ftp_data.dBuffer, FTP_BUFFER_SIZE, &len))) {
                    ftp_data.dtimeout = 0;
                    ftp_data.ctimeout = 0;
                    // its a software update
                    if (ftp_data.special_file) {
                        if (FUNC17(ftp_data.dBuffer, len)) {
                            break;
                        }
                    }
                    // user file being received
                    else if (E_FTP_RESULT_OK == FUNC13 ((char *)ftp_data.dBuffer, len)) {
                        break;
                    }
                    FUNC10(451, NULL);
                    ftp_data.state = E_FTP_STE_END_TRANSFER;
                }
                else if (result == E_FTP_RESULT_CONTINUE) {
                    if (ftp_data.dtimeout++ > FTP_DATA_TIMEOUT_MS / FTP_CYCLE_TIME_MS) {
                        FUNC1();
                        FUNC10(426, NULL);
                        ftp_data.state = E_FTP_STE_END_TRANSFER;
                    }
                }
                else {
                    if (ftp_data.special_file) {
                        ftp_data.special_file = false;
                        FUNC16();
                    }
                    FUNC1();
                    FUNC10(226, NULL);
                    ftp_data.state = E_FTP_STE_END_TRANSFER;
                }
            }
            break;
        default:
            break;
    }

    switch (ftp_data.substate) {
    case E_FTP_STE_SUB_DISCONNECTED:
        break;
    case E_FTP_STE_SUB_LISTEN_FOR_DATA:
        if (E_FTP_RESULT_OK == FUNC11(ftp_data.ld_sd, &ftp_data.d_sd)) {
            ftp_data.dtimeout = 0;
            ftp_data.substate = E_FTP_STE_SUB_DATA_CONNECTED;
        }
        else if (ftp_data.dtimeout++ > FTP_DATA_TIMEOUT_MS / FTP_CYCLE_TIME_MS) {
            ftp_data.dtimeout = 0;
            // close the listening socket
            FUNC14(&ftp_data.ld_sd);
            ftp_data.substate = E_FTP_STE_SUB_DISCONNECTED;
        }
        break;
    case E_FTP_STE_SUB_DATA_CONNECTED:
        if (ftp_data.state == E_FTP_STE_READY && ftp_data.dtimeout++ > FTP_DATA_TIMEOUT_MS / FTP_CYCLE_TIME_MS) {
            // close the listening and the data socket
            FUNC14(&ftp_data.ld_sd);
            FUNC14(&ftp_data.d_sd);
            FUNC2 ();
            ftp_data.substate = E_FTP_STE_SUB_DISCONNECTED;
        }
        break;
    default:
        break;
    }

    // send data pending in the queue
    FUNC9();

    // check the state of the data sockets
    if (ftp_data.d_sd < 0 && (ftp_data.state > E_FTP_STE_READY)) {
        ftp_data.substate = E_FTP_STE_SUB_DISCONNECTED;
        ftp_data.state = E_FTP_STE_READY;
    }
}