
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utsname {int * release; } ;


 int AFALG_F_AFALG_CHK_PLATFORM ;
 int AFALG_R_FAILED_TO_GET_PLATFORM_INFO ;
 int AFALG_R_KERNEL_DOES_NOT_SUPPORT_ASYNC_AFALG ;
 int AFALG_R_SOCKET_CREATE_FAILED ;
 int AFALGerr (int ,int ) ;
 int AF_ALG ;
 int ALG_ERR (char*,int,int,int) ;
 scalar_t__ KERNEL_VERSION (int,int,int) ;
 int K_MAJ ;
 int K_MIN1 ;
 int K_MIN2 ;
 int SOCK_SEQPACKET ;
 int atoi (char*) ;
 int close (int) ;
 int socket (int ,int ,int ) ;
 char* strtok (int *,char*) ;
 int uname (struct utsname*) ;

__attribute__((used)) static int afalg_chk_platform(void)
{
    int ret;
    int i;
    int kver[3] = { -1, -1, -1 };
    int sock;
    char *str;
    struct utsname ut;

    ret = uname(&ut);
    if (ret != 0) {
        AFALGerr(AFALG_F_AFALG_CHK_PLATFORM,
                 AFALG_R_FAILED_TO_GET_PLATFORM_INFO);
        return 0;
    }

    str = strtok(ut.release, ".");
    for (i = 0; i < 3 && str != ((void*)0); i++) {
        kver[i] = atoi(str);
        str = strtok(((void*)0), ".");
    }

    if (KERNEL_VERSION(kver[0], kver[1], kver[2])
        < KERNEL_VERSION(K_MAJ, K_MIN1, K_MIN2)) {
        ALG_ERR("ASYNC AFALG not supported this kernel(%d.%d.%d)\n",
                 kver[0], kver[1], kver[2]);
        ALG_ERR("ASYNC AFALG requires kernel version %d.%d.%d or later\n",
                 K_MAJ, K_MIN1, K_MIN2);
        AFALGerr(AFALG_F_AFALG_CHK_PLATFORM,
                 AFALG_R_KERNEL_DOES_NOT_SUPPORT_ASYNC_AFALG);
        return 0;
    }


    sock = socket(AF_ALG, SOCK_SEQPACKET, 0);
    if (sock == -1) {
        AFALGerr(AFALG_F_AFALG_CHK_PLATFORM, AFALG_R_SOCKET_CREATE_FAILED);
        return 0;
    }
    close(sock);

    return 1;
}
