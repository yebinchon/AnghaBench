#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ftp_result_t ;
typedef  scalar_t__ _i32 ;
typedef  int /*<<< orphan*/  _i16 ;

/* Variables and functions */
 int /*<<< orphan*/  E_FTP_RESULT_CONTINUE ; 
 int /*<<< orphan*/  E_FTP_RESULT_FAILED ; 
 int /*<<< orphan*/  E_FTP_RESULT_OK ; 
 scalar_t__ SL_EAGAIN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ftp_result_t FUNC1 (_i16 sd, void *buff, _i16 Maxlen, _i32 *rxLen) {
    *rxLen = FUNC0(sd, buff, Maxlen, 0);

    if (*rxLen > 0) {
        return E_FTP_RESULT_OK;
    }
    else if (*rxLen != SL_EAGAIN) {
        // error
        return E_FTP_RESULT_FAILED;
    }
    return E_FTP_RESULT_CONTINUE;
}