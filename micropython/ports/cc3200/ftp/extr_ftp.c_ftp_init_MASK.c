#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int c_sd; int d_sd; int lc_sd; int ld_sd; int special_file; scalar_t__ volcount; int /*<<< orphan*/  substate; int /*<<< orphan*/  state; int /*<<< orphan*/  e_open; int /*<<< orphan*/ * dBuffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_FTP_NOTHING_OPEN ; 
 int /*<<< orphan*/  E_FTP_STE_DISABLED ; 
 int /*<<< orphan*/  E_FTP_STE_SUB_DISCONNECTED ; 
 scalar_t__ FTP_BUFFER_SIZE ; 
 scalar_t__ FTP_CMD_SIZE_MAX ; 
 scalar_t__ FTP_MAX_PARAM_SIZE ; 
 int /*<<< orphan*/  FTP_SOCKETFIFO_ELEMENTS_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * ftp_cmd_buffer ; 
 TYPE_1__ ftp_data ; 
 scalar_t__ ftp_fifoelements ; 
 int /*<<< orphan*/ * ftp_path ; 
 int /*<<< orphan*/ * ftp_scratch_buffer ; 
 int /*<<< orphan*/  ftp_socketfifo ; 
 void* FUNC2 (scalar_t__) ; 

void FUNC3 (void) {
    // Allocate memory for the data buffer, and the file system structs (from the RTOS heap)
    FUNC0 ((ftp_data.dBuffer = FUNC2(FTP_BUFFER_SIZE)) != NULL);
    FUNC0 ((ftp_path = FUNC2(FTP_MAX_PARAM_SIZE)) != NULL);
    FUNC0 ((ftp_scratch_buffer = FUNC2(FTP_MAX_PARAM_SIZE)) != NULL);
    FUNC0 ((ftp_cmd_buffer = FUNC2(FTP_MAX_PARAM_SIZE + FTP_CMD_SIZE_MAX)) != NULL);
    FUNC1 (&ftp_socketfifo, (void *)ftp_fifoelements, FTP_SOCKETFIFO_ELEMENTS_MAX);
    ftp_data.c_sd  = -1;
    ftp_data.d_sd  = -1;
    ftp_data.lc_sd = -1;
    ftp_data.ld_sd = -1;
    ftp_data.e_open = E_FTP_NOTHING_OPEN;
    ftp_data.state = E_FTP_STE_DISABLED;
    ftp_data.substate = E_FTP_STE_SUB_DISCONNECTED;
    ftp_data.special_file = false;
    ftp_data.volcount = 0;
}