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
struct utsname {int /*<<< orphan*/ * release; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFALG_F_AFALG_CHK_PLATFORM ; 
 int /*<<< orphan*/  AFALG_R_FAILED_TO_GET_PLATFORM_INFO ; 
 int /*<<< orphan*/  AFALG_R_KERNEL_DOES_NOT_SUPPORT_ASYNC_AFALG ; 
 int /*<<< orphan*/  AFALG_R_SOCKET_CREATE_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AF_ALG ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int,int) ; 
 scalar_t__ FUNC2 (int,int,int) ; 
 int K_MAJ ; 
 int K_MIN1 ; 
 int K_MIN2 ; 
 int /*<<< orphan*/  SOCK_SEQPACKET ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int FUNC7 (struct utsname*) ; 

__attribute__((used)) static int FUNC8(void)
{
    int ret;
    int i;
    int kver[3] = { -1, -1, -1 };
    int sock;
    char *str;
    struct utsname ut;

    ret = FUNC7(&ut);
    if (ret != 0) {
        FUNC0(AFALG_F_AFALG_CHK_PLATFORM,
                 AFALG_R_FAILED_TO_GET_PLATFORM_INFO);
        return 0;
    }

    str = FUNC6(ut.release, ".");
    for (i = 0; i < 3 && str != NULL; i++) {
        kver[i] = FUNC3(str);
        str = FUNC6(NULL, ".");
    }

    if (FUNC2(kver[0], kver[1], kver[2])
        < FUNC2(K_MAJ, K_MIN1, K_MIN2)) {
        FUNC1("ASYNC AFALG not supported this kernel(%d.%d.%d)\n",
                 kver[0], kver[1], kver[2]);
        FUNC1("ASYNC AFALG requires kernel version %d.%d.%d or later\n",
                 K_MAJ, K_MIN1, K_MIN2);
        FUNC0(AFALG_F_AFALG_CHK_PLATFORM,
                 AFALG_R_KERNEL_DOES_NOT_SUPPORT_ASYNC_AFALG);
        return 0;
    }

    /* Test if we can actually create an AF_ALG socket */
    sock = FUNC5(AF_ALG, SOCK_SEQPACKET, 0);
    if (sock == -1) {
        FUNC0(AFALG_F_AFALG_CHK_PLATFORM, AFALG_R_SOCKET_CREATE_FAILED);
        return 0;
    }
    FUNC4(sock);

    return 1;
}