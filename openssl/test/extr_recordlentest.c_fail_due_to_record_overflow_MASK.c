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

/* Variables and functions */
 scalar_t__ FUNC0 (long) ; 
 int FUNC1 (long) ; 
 scalar_t__ ERR_LIB_SSL ; 
 long FUNC2 () ; 
 int SSL_R_DATA_LENGTH_TOO_LONG ; 
 int SSL_R_ENCRYPTED_LENGTH_TOO_LONG ; 

__attribute__((used)) static int FUNC3(int enc)
{
    long err = FUNC2();
    int reason;

    if (enc)
        reason = SSL_R_ENCRYPTED_LENGTH_TOO_LONG;
    else
        reason = SSL_R_DATA_LENGTH_TOO_LONG;

    if (FUNC0(err) == ERR_LIB_SSL
            && FUNC1(err) == reason)
        return 1;

    return 0;
}