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
typedef  int time_t ;
struct pollfd {int fd; int events; int revents; } ;
typedef  int int32_t ;
typedef  int fe_status_t ;
typedef  int /*<<< orphan*/  dvb_priv_t ;

/* Variables and functions */
 int FE_HAS_LOCK ; 
 int /*<<< orphan*/  FE_READ_BER ; 
 int /*<<< orphan*/  FE_READ_SIGNAL_STRENGTH ; 
 int /*<<< orphan*/  FE_READ_SNR ; 
 int /*<<< orphan*/  FE_READ_STATUS ; 
 int /*<<< orphan*/  FE_READ_UNCORRECTED_BLOCKS ; 
 int FE_TIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int POLLPRI ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC3 (struct pollfd*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(dvb_priv_t *priv, int fd_frontend, int tmout)
{
    int32_t strength;
    fe_status_t festatus;
    struct pollfd pfd[1];
    int ok = 0, locks = 0;
    time_t tm1, tm2;

    pfd[0].fd = fd_frontend;
    pfd[0].events = POLLPRI;

    FUNC1(priv, "Getting frontend status\n");
    tm1 = tm2 = FUNC5((time_t *) NULL);
    while (!ok) {
        festatus = 0;
        if (FUNC3(pfd, 1, tmout * 1000) > 0) {
            if (pfd[0].revents & POLLPRI) {
                if (FUNC2(fd_frontend, FE_READ_STATUS, &festatus) >= 0) {
                    if (festatus & FE_HAS_LOCK)
                        locks++;
                }
            }
        }
        FUNC6(10000);
        tm2 = FUNC5((time_t *) NULL);
        if ((festatus & FE_TIMEDOUT) || (locks >= 2) || (tm2 - tm1 >= tmout))
            ok = 1;
    }

    if (festatus & FE_HAS_LOCK) {
        strength = 0;
        if (FUNC2(fd_frontend, FE_READ_BER, &strength) >= 0)
            FUNC1(priv, "Bit error rate: %d\n", strength);

        strength = 0;
        if (FUNC2(fd_frontend, FE_READ_SIGNAL_STRENGTH, &strength) >= 0)
            FUNC1(priv, "Signal strength: %d\n", strength);

        strength = 0;
        if (FUNC2(fd_frontend, FE_READ_SNR, &strength) >= 0)
            FUNC1(priv, "SNR: %d\n", strength);

        strength = 0;
        if (FUNC2(fd_frontend, FE_READ_UNCORRECTED_BLOCKS, &strength) >= 0)
            FUNC1(priv, "UNC: %d\n", strength);

        FUNC4(priv, festatus);
    } else {
        FUNC0(priv, "Not able to lock to the signal on the given frequency, "
               "timeout: %d\n", tmout);
        return -1;
    }
    return 0;
}