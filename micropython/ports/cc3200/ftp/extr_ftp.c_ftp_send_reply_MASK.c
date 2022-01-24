#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int _u16 ;
struct TYPE_5__ {int /*<<< orphan*/  c_sd; } ;
struct TYPE_4__ {int freedata; scalar_t__ data; int /*<<< orphan*/  datasize; int /*<<< orphan*/  closesockets; int /*<<< orphan*/ * sd; } ;
typedef  TYPE_1__ SocketFifoElement_t ;

/* Variables and functions */
 int /*<<< orphan*/  E_FTP_CLOSE_CMD_AND_DATA ; 
 int /*<<< orphan*/  E_FTP_CLOSE_DATA ; 
 int /*<<< orphan*/  E_FTP_CLOSE_NONE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ ftp_cmd_buffer ; 
 TYPE_2__ ftp_data ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7 (_u16 status, char *message) {
    SocketFifoElement_t fifoelement;
    if (!message) {
        message = "";
    }
    FUNC4((char *)ftp_cmd_buffer, 4, "%u", status);
    FUNC5 ((char *)ftp_cmd_buffer, " ");
    FUNC5 ((char *)ftp_cmd_buffer, message);
    FUNC5 ((char *)ftp_cmd_buffer, "\r\n");
    fifoelement.sd = &ftp_data.c_sd;
    fifoelement.datasize = FUNC6((char *)ftp_cmd_buffer);
    fifoelement.data = FUNC2(fifoelement.datasize);
    if (status == 221) {
        fifoelement.closesockets = E_FTP_CLOSE_CMD_AND_DATA;
    }
    else if (status == 426 || status == 451 || status == 550) {
        fifoelement.closesockets = E_FTP_CLOSE_DATA;
    }
    else {
        fifoelement.closesockets = E_FTP_CLOSE_NONE;
    }
    fifoelement.freedata = true;
    if (fifoelement.data) {
        FUNC3 (fifoelement.data, ftp_cmd_buffer, fifoelement.datasize);
        if (!FUNC0 (&fifoelement)) {
            FUNC1(fifoelement.data);
        }
    }
}