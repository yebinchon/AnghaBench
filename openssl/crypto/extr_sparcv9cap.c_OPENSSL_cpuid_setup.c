
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigaction {int sa_mask; int sa_handler; } ;
typedef int sigset_t ;
typedef int common_act ;


 int CFR_CRC32C ;
 int CFR_MONTMUL ;
 int CFR_XMONTMUL ;
 int CFR_XMONTSQR ;
 int CFR_XMPMUL ;
 int* OPENSSL_sparcv9cap_P ;
 int SIGBUS ;
 int SIGEMT ;
 int SIGFPE ;
 int SIGILL ;
 int SIGSEGV ;
 int SIGTRAP ;
 int SIG_SETMASK ;
 int SPARCV9_64BIT_STACK ;
 int SPARCV9_BLK ;
 int SPARCV9_FJAESX ;
 int SPARCV9_FJDESX ;
 int SPARCV9_FJHPCACE ;
 int SPARCV9_FMADD ;
 int SPARCV9_IMA ;
 int SPARCV9_PREFER_FPU ;
 int SPARCV9_TICK_PRIVILEGED ;
 int SPARCV9_VIS1 ;
 int SPARCV9_VIS2 ;
 int SPARCV9_VIS3 ;
 int SPARCV9_VIS4 ;
 int _sparcv9_fjaesx_probe () ;
 int _sparcv9_fmadd_probe () ;
 scalar_t__ _sparcv9_rdcfr () ;
 int _sparcv9_rdtick () ;
 int _sparcv9_vis1_instrument () ;
 int _sparcv9_vis1_probe () ;
 int _sparcv9_vis2_probe () ;
 int _sparcv9_vis3_probe () ;
 int common_handler ;
 int common_jmp ;
 char* getenv (char*) ;
 scalar_t__ getisax (unsigned int*,int) ;
 int memset (struct sigaction*,int ,int) ;
 int sigaction (int ,struct sigaction*,struct sigaction*) ;
 int sigdelset (int *,int ) ;
 int sigfillset (int *) ;
 int sigprocmask (int ,int *,int *) ;
 scalar_t__ sigsetjmp (int ,int) ;
 char* strchr (char*,char) ;
 int strtoul (char*,int *,int ) ;
 int syscall (int) ;

void OPENSSL_cpuid_setup(void)
{
    char *e;
    struct sigaction common_act, ill_oact, bus_oact;
    sigset_t all_masked, oset;
    static int trigger = 0;

    if (trigger)
        return;
    trigger = 1;

    if ((e = getenv("OPENSSL_sparcv9cap"))) {
        OPENSSL_sparcv9cap_P[0] = strtoul(e, ((void*)0), 0);
        if ((e = strchr(e, ':')))
            OPENSSL_sparcv9cap_P[1] = strtoul(e + 1, ((void*)0), 0);
        return;
    }
    OPENSSL_sparcv9cap_P[0] = SPARCV9_PREFER_FPU | SPARCV9_TICK_PRIVILEGED;

    sigfillset(&all_masked);
    sigdelset(&all_masked, SIGILL);
    sigdelset(&all_masked, SIGTRAP);



    sigdelset(&all_masked, SIGFPE);
    sigdelset(&all_masked, SIGBUS);
    sigdelset(&all_masked, SIGSEGV);
    sigprocmask(SIG_SETMASK, &all_masked, &oset);

    memset(&common_act, 0, sizeof(common_act));
    common_act.sa_handler = common_handler;
    common_act.sa_mask = all_masked;

    sigaction(SIGILL, &common_act, &ill_oact);
    sigaction(SIGBUS, &common_act, &bus_oact);


    if (sigsetjmp(common_jmp, 1) == 0) {
        _sparcv9_rdtick();
        OPENSSL_sparcv9cap_P[0] &= ~SPARCV9_TICK_PRIVILEGED;
    }

    if (sigsetjmp(common_jmp, 1) == 0) {
        _sparcv9_vis1_probe();
        OPENSSL_sparcv9cap_P[0] |= SPARCV9_VIS1 | SPARCV9_BLK;

        if (_sparcv9_vis1_instrument() >= 12)
            OPENSSL_sparcv9cap_P[0] &= ~(SPARCV9_VIS1 | SPARCV9_PREFER_FPU);
        else {
            _sparcv9_vis2_probe();
            OPENSSL_sparcv9cap_P[0] |= SPARCV9_VIS2;
        }
    }

    if (sigsetjmp(common_jmp, 1) == 0) {
        _sparcv9_fmadd_probe();
        OPENSSL_sparcv9cap_P[0] |= SPARCV9_FMADD;
    }





    if (sigsetjmp(common_jmp, 1) == 0) {
        _sparcv9_vis3_probe();
        OPENSSL_sparcv9cap_P[0] |= SPARCV9_VIS3;
    }

    if (sigsetjmp(common_jmp, 1) == 0) {
        _sparcv9_fjaesx_probe();
        OPENSSL_sparcv9cap_P[0] |= SPARCV9_FJAESX;
    }







    if ((OPENSSL_sparcv9cap_P[0] & SPARCV9_VIS3) &&
        sigsetjmp(common_jmp, 1) == 0) {
        OPENSSL_sparcv9cap_P[1] = (unsigned int)_sparcv9_rdcfr();
    }

    sigaction(SIGBUS, &bus_oact, ((void*)0));
    sigaction(SIGILL, &ill_oact, ((void*)0));

    sigprocmask(SIG_SETMASK, &oset, ((void*)0));

    if (sizeof(size_t) == 8)
        OPENSSL_sparcv9cap_P[0] |= SPARCV9_64BIT_STACK;

    else {
        int ret = syscall(340);

        if (ret >= 0 && ret & 1)
            OPENSSL_sparcv9cap_P[0] |= SPARCV9_64BIT_STACK;
    }

}
