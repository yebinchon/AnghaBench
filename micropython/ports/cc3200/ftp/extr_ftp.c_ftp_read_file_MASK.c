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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  ftp_result_t ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_2__ {int /*<<< orphan*/  fp; } ;
typedef  scalar_t__ FRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_FTP_RESULT_CONTINUE ; 
 int /*<<< orphan*/  E_FTP_RESULT_FAILED ; 
 int /*<<< orphan*/  E_FTP_RESULT_OK ; 
 scalar_t__ FR_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__ ftp_data ; 

__attribute__((used)) static ftp_result_t FUNC2 (char *filebuf, uint32_t desiredsize, uint32_t *actualsize) {
    ftp_result_t result = E_FTP_RESULT_CONTINUE;
    FRESULT res = FUNC0(&ftp_data.fp, filebuf, desiredsize, (UINT *)actualsize);
    if (res != FR_OK) {
        FUNC1();
        result = E_FTP_RESULT_FAILED;
        *actualsize = 0;
    }
    else if (*actualsize < desiredsize) {
        FUNC1();
        result = E_FTP_RESULT_OK;
    }
    return result;
}