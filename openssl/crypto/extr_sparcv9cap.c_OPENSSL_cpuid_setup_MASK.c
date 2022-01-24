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
struct sigaction {int /*<<< orphan*/  sa_mask; int /*<<< orphan*/  sa_handler; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  common_act ;

/* Variables and functions */
 int CFR_CRC32C ; 
 int CFR_MONTMUL ; 
 int CFR_XMONTMUL ; 
 int CFR_XMONTSQR ; 
 int CFR_XMPMUL ; 
 int* OPENSSL_sparcv9cap_P ; 
 int /*<<< orphan*/  SIGBUS ; 
 int /*<<< orphan*/  SIGEMT ; 
 int /*<<< orphan*/  SIGFPE ; 
 int /*<<< orphan*/  SIGILL ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  SIGTRAP ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  common_handler ; 
 int /*<<< orphan*/  common_jmp ; 
 char* FUNC8 (char*) ; 
 scalar_t__ FUNC9 (unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sigaction*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct sigaction*,struct sigaction*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int) ; 
 char* FUNC16 (char*,char) ; 
 int FUNC17 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC18 (int) ; 

void FUNC19(void)
{
    char *e;
    struct sigaction common_act, ill_oact, bus_oact;
    sigset_t all_masked, oset;
    static int trigger = 0;

    if (trigger)
        return;
    trigger = 1;

    if ((e = FUNC8("OPENSSL_sparcv9cap"))) {
        OPENSSL_sparcv9cap_P[0] = FUNC17(e, NULL, 0);
        if ((e = FUNC16(e, ':')))
            OPENSSL_sparcv9cap_P[1] = FUNC17(e + 1, NULL, 0);
        return;
    }

#if defined(__sun) && defined(__SVR4)
    if (getisax != NULL) {
        unsigned int vec[2] = { 0, 0 };

        if (getisax (vec,2)) {
            if (vec[0]&0x00020) OPENSSL_sparcv9cap_P[0] |= SPARCV9_VIS1;
            if (vec[0]&0x00040) OPENSSL_sparcv9cap_P[0] |= SPARCV9_VIS2;
            if (vec[0]&0x00080) OPENSSL_sparcv9cap_P[0] |= SPARCV9_BLK;
            if (vec[0]&0x00100) OPENSSL_sparcv9cap_P[0] |= SPARCV9_FMADD;
            if (vec[0]&0x00400) OPENSSL_sparcv9cap_P[0] |= SPARCV9_VIS3;
            if (vec[0]&0x01000) OPENSSL_sparcv9cap_P[0] |= SPARCV9_FJHPCACE;
            if (vec[0]&0x02000) OPENSSL_sparcv9cap_P[0] |= SPARCV9_FJDESX;
            if (vec[0]&0x08000) OPENSSL_sparcv9cap_P[0] |= SPARCV9_IMA;
            if (vec[0]&0x10000) OPENSSL_sparcv9cap_P[0] |= SPARCV9_FJAESX;
            if (vec[1]&0x00008) OPENSSL_sparcv9cap_P[0] |= SPARCV9_VIS4;

            /* reconstruct %cfr copy */
            OPENSSL_sparcv9cap_P[1] = (vec[0]>>17)&0x3ff;
            OPENSSL_sparcv9cap_P[1] |= (OPENSSL_sparcv9cap_P[1]&CFR_MONTMUL)<<1;
            if (vec[0]&0x20000000) OPENSSL_sparcv9cap_P[1] |= CFR_CRC32C;
            if (vec[1]&0x00000020) OPENSSL_sparcv9cap_P[1] |= CFR_XMPMUL;
            if (vec[1]&0x00000040)
                OPENSSL_sparcv9cap_P[1] |= CFR_XMONTMUL|CFR_XMONTSQR;

            /* Some heuristics */
            /* all known VIS2-capable CPUs have unprivileged tick counter */
            if (OPENSSL_sparcv9cap_P[0]&SPARCV9_VIS2)
                OPENSSL_sparcv9cap_P[0] &= ~SPARCV9_TICK_PRIVILEGED;

            OPENSSL_sparcv9cap_P[0] |= SPARCV9_PREFER_FPU;

            /* detect UltraSPARC-Tx, see sparccpud.S for details... */
            if ((OPENSSL_sparcv9cap_P[0]&SPARCV9_VIS1) &&
                _sparcv9_vis1_instrument() >= 12)
                OPENSSL_sparcv9cap_P[0] &= ~(SPARCV9_VIS1 | SPARCV9_PREFER_FPU);
        }

        if (sizeof(size_t) == 8)
            OPENSSL_sparcv9cap_P[0] |= SPARCV9_64BIT_STACK;

        return;
    }
#endif

    /* Initial value, fits UltraSPARC-I&II... */
    OPENSSL_sparcv9cap_P[0] = SPARCV9_PREFER_FPU | SPARCV9_TICK_PRIVILEGED;

    FUNC13(&all_masked);
    FUNC12(&all_masked, SIGILL);
    FUNC12(&all_masked, SIGTRAP);
# ifdef SIGEMT
    sigdelset(&all_masked, SIGEMT);
# endif
    FUNC12(&all_masked, SIGFPE);
    FUNC12(&all_masked, SIGBUS);
    FUNC12(&all_masked, SIGSEGV);
    FUNC14(SIG_SETMASK, &all_masked, &oset);

    FUNC10(&common_act, 0, sizeof(common_act));
    common_act.sa_handler = common_handler;
    common_act.sa_mask = all_masked;

    FUNC11(SIGILL, &common_act, &ill_oact);
    FUNC11(SIGBUS, &common_act, &bus_oact); /* T1 fails 16-bit ldda [on
                                                * Linux] */

    if (FUNC15(common_jmp, 1) == 0) {
        FUNC3();
        OPENSSL_sparcv9cap_P[0] &= ~SPARCV9_TICK_PRIVILEGED;
    }

    if (FUNC15(common_jmp, 1) == 0) {
        FUNC5();
        OPENSSL_sparcv9cap_P[0] |= SPARCV9_VIS1 | SPARCV9_BLK;
        /* detect UltraSPARC-Tx, see sparccpud.S for details... */
        if (FUNC4() >= 12)
            OPENSSL_sparcv9cap_P[0] &= ~(SPARCV9_VIS1 | SPARCV9_PREFER_FPU);
        else {
            FUNC6();
            OPENSSL_sparcv9cap_P[0] |= SPARCV9_VIS2;
        }
    }

    if (FUNC15(common_jmp, 1) == 0) {
        FUNC1();
        OPENSSL_sparcv9cap_P[0] |= SPARCV9_FMADD;
    }

    /*
     * VIS3 flag is tested independently from VIS1, unlike VIS2 that is,
     * because VIS3 defines even integer instructions.
     */
    if (FUNC15(common_jmp, 1) == 0) {
        FUNC7();
        OPENSSL_sparcv9cap_P[0] |= SPARCV9_VIS3;
    }

    if (FUNC15(common_jmp, 1) == 0) {
        FUNC0();
        OPENSSL_sparcv9cap_P[0] |= SPARCV9_FJAESX;
    }

    /*
     * In wait for better solution _sparcv9_rdcfr is masked by
     * VIS3 flag, because it goes to uninterruptable endless
     * loop on UltraSPARC II running Solaris. Things might be
     * different on Linux...
     */
    if ((OPENSSL_sparcv9cap_P[0] & SPARCV9_VIS3) &&
        FUNC15(common_jmp, 1) == 0) {
        OPENSSL_sparcv9cap_P[1] = (unsigned int)FUNC2();
    }

    FUNC11(SIGBUS, &bus_oact, NULL);
    FUNC11(SIGILL, &ill_oact, NULL);

    FUNC14(SIG_SETMASK, &oset, NULL);

    if (sizeof(size_t) == 8)
        OPENSSL_sparcv9cap_P[0] |= SPARCV9_64BIT_STACK;
# ifdef __linux
    else {
        int ret = FUNC18(340);

        if (ret >= 0 && ret & 1)
            OPENSSL_sparcv9cap_P[0] |= SPARCV9_64BIT_STACK;
    }
# endif
}