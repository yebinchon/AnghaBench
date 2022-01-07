
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sigaction {int sa_mask; int sa_handler; } ;
struct OPENSSL_s390xcap_st {int* stfle; int * kdsa; int * pcc; int * kma; int * prno; int * kmf; int * kmo; int * kmctr; int * kmac; int * kmc; int * km; int * klmd; int * kimd; } ;
typedef int sigset_t ;
typedef int ill_act ;
struct TYPE_2__ {int* stfle; int * kdsa; int * pcc; int * kma; int * prno; int * kmf; int * kmo; int * kmctr; int * kmac; int * kmc; int * km; int * klmd; int * kimd; } ;


 int AT_HWCAP ;
 unsigned long const HWCAP_S390_STFLE ;
 unsigned long const HWCAP_S390_VX ;
 int OPENSSL_s390x_facilities () ;
 int OPENSSL_s390x_functions () ;
 TYPE_1__ OPENSSL_s390xcap_P ;
 int OPENSSL_vx_probe () ;
 int S390X_CAPBIT (int ) ;
 int S390X_VX ;
 int S390X_VXD ;
 int S390X_VXE ;
 int SIGFPE ;
 int SIGILL ;
 int SIGTRAP ;
 int SIG_SETMASK ;
 int * env ;
 unsigned long getauxval (int ) ;
 int * getenv (char*) ;
 int ill_handler ;
 int ill_jmp ;
 int memset (struct sigaction*,int ,int) ;
 int parse_env (struct OPENSSL_s390xcap_st*) ;
 int sigaction (int ,struct sigaction*,struct sigaction*) ;
 int sigdelset (int *,int ) ;
 int sigfillset (int *) ;
 int sigprocmask (int ,int *,int *) ;
 scalar_t__ sigsetjmp (int ,int) ;

void OPENSSL_cpuid_setup(void)
{
    struct OPENSSL_s390xcap_st cap;

    if (OPENSSL_s390xcap_P.stfle[0])
        return;


    OPENSSL_s390xcap_P.stfle[0] |= S390X_CAPBIT(0);
    {
        sigset_t oset;
        struct sigaction ill_act, oact_ill, oact_fpe;

        memset(&ill_act, 0, sizeof(ill_act));
        ill_act.sa_handler = ill_handler;
        sigfillset(&ill_act.sa_mask);
        sigdelset(&ill_act.sa_mask, SIGILL);
        sigdelset(&ill_act.sa_mask, SIGFPE);
        sigdelset(&ill_act.sa_mask, SIGTRAP);

        sigprocmask(SIG_SETMASK, &ill_act.sa_mask, &oset);
        sigaction(SIGILL, &ill_act, &oact_ill);
        sigaction(SIGFPE, &ill_act, &oact_fpe);


        if (sigsetjmp(ill_jmp, 1) == 0)
            OPENSSL_s390x_facilities();


        if ((OPENSSL_s390xcap_P.stfle[2] & S390X_CAPBIT(S390X_VX))
            && (sigsetjmp(ill_jmp, 1) == 0)) {
            OPENSSL_vx_probe();
        } else {
            OPENSSL_s390xcap_P.stfle[2] &= ~(S390X_CAPBIT(S390X_VX)
                                             | S390X_CAPBIT(S390X_VXD)
                                             | S390X_CAPBIT(S390X_VXE));
        }

        sigaction(SIGFPE, &oact_fpe, ((void*)0));
        sigaction(SIGILL, &oact_ill, ((void*)0));
        sigprocmask(SIG_SETMASK, &oset, ((void*)0));
    }


    env = getenv("OPENSSL_s390xcap");
    if (env != ((void*)0)) {
        if (!parse_env(&cap))
            env = ((void*)0);
    }

    if (env != ((void*)0)) {
        OPENSSL_s390xcap_P.stfle[0] &= cap.stfle[0];
        OPENSSL_s390xcap_P.stfle[1] &= cap.stfle[1];
        OPENSSL_s390xcap_P.stfle[2] &= cap.stfle[2];
    }

    OPENSSL_s390x_functions();

    if (env != ((void*)0)) {
        OPENSSL_s390xcap_P.kimd[0] &= cap.kimd[0];
        OPENSSL_s390xcap_P.kimd[1] &= cap.kimd[1];
        OPENSSL_s390xcap_P.klmd[0] &= cap.klmd[0];
        OPENSSL_s390xcap_P.klmd[1] &= cap.klmd[1];
        OPENSSL_s390xcap_P.km[0] &= cap.km[0];
        OPENSSL_s390xcap_P.km[1] &= cap.km[1];
        OPENSSL_s390xcap_P.kmc[0] &= cap.kmc[0];
        OPENSSL_s390xcap_P.kmc[1] &= cap.kmc[1];
        OPENSSL_s390xcap_P.kmac[0] &= cap.kmac[0];
        OPENSSL_s390xcap_P.kmac[1] &= cap.kmac[1];
        OPENSSL_s390xcap_P.kmctr[0] &= cap.kmctr[0];
        OPENSSL_s390xcap_P.kmctr[1] &= cap.kmctr[1];
        OPENSSL_s390xcap_P.kmo[0] &= cap.kmo[0];
        OPENSSL_s390xcap_P.kmo[1] &= cap.kmo[1];
        OPENSSL_s390xcap_P.kmf[0] &= cap.kmf[0];
        OPENSSL_s390xcap_P.kmf[1] &= cap.kmf[1];
        OPENSSL_s390xcap_P.prno[0] &= cap.prno[0];
        OPENSSL_s390xcap_P.prno[1] &= cap.prno[1];
        OPENSSL_s390xcap_P.kma[0] &= cap.kma[0];
        OPENSSL_s390xcap_P.kma[1] &= cap.kma[1];
        OPENSSL_s390xcap_P.pcc[0] &= cap.pcc[0];
        OPENSSL_s390xcap_P.pcc[1] &= cap.pcc[1];
        OPENSSL_s390xcap_P.kdsa[0] &= cap.kdsa[0];
        OPENSSL_s390xcap_P.kdsa[1] &= cap.kdsa[1];
    }
}
