
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ GlobalCounterType_t ;


 scalar_t__ CRIU_GCOUNTER_PIPE ;
 scalar_t__ CRIU_GCOUNTER_SHM ;
 scalar_t__ CRIU_GCOUNTER_SIG ;
 scalar_t__ LSAPI_Is_Listen () ;
 int LSCRIU_Set_Global_Counter_Type (scalar_t__) ;
 int LSCRIU_Set_Initial_Start_Reqs (int) ;
 int SIGUSR2 ;
 int atoi (char const*) ;
 void* getenv (char*) ;
 int getpid () ;
 int init_native_env () ;
 int lsapi_criu_signal (int ,int ) ;
 int lsapi_siguser2 ;
 int lscriu_dbg (char*,int ,...) ;
 int s_native ;

__attribute__((used)) static int LSCRIU_Init_Env_Parameters(void)
{
    const char *p;
    int n;

    p = getenv("LSAPI_INITIAL_START");
    if (!p)
        p = getenv("LSAPI_BACKEND_INITIAL_START");
    if (p) {
        n = atoi(p);

        if (n > 0) {
            lscriu_dbg("LSCRIU (%d): Set start requests based on environment (%d)\n",
                       getpid(), n);
            LSCRIU_Set_Initial_Start_Reqs(n);
        } else {
            lscriu_dbg("LSCRIU (%d): LSAPI_INITIAL_START set to 0 disabled\n",
                       getpid());
            return 0;
        }
    } else {
        lscriu_dbg("LSCRIU (%d): LSAPI_INITIAL_START NOT set - disabled\n",
                   getpid());
        return 0;
    }
    if (LSAPI_Is_Listen()) {
        lscriu_dbg("LSCRIU (%d): Listening...\n", getpid());
        GlobalCounterType_t gc_type = CRIU_GCOUNTER_SHM;
        char *env;
        if ((env = getenv("LSAPI_CRIU_USE_SHM"))) {




            if ((*env == 'S') || (*env == 's'))
                gc_type = CRIU_GCOUNTER_SIG;

        }
        else if ((env = getenv("LSAPI_SIGNALS"))) {
            if ((*env == '1') ||
                (*env == 'Y') ||
                (*env == 'y') ||
                (*env == 'T') ||
                (*env == 't') ||
                (((*env == 'O') || (*env == 'o')) &&
                 ((*(env + 1) == 'N') || (*(env + 1) == 'n'))))
                gc_type = CRIU_GCOUNTER_SIG;
            else if (*env == 2)
                gc_type = CRIU_GCOUNTER_PIPE;

        }
        if (gc_type != CRIU_GCOUNTER_SHM) {
            lscriu_dbg("LSCRIU (%d): Use %s\n", getpid(),
                       gc_type == CRIU_GCOUNTER_SIG ? "signals" : "pipe");
            lsapi_criu_signal(SIGUSR2, lsapi_siguser2);
        }
        else
            lscriu_dbg("LSCRIU (%d): Use shared memory\n", getpid());
        LSCRIU_Set_Global_Counter_Type(gc_type);
    }
    else
        lscriu_dbg("LSCRIU (%d): NOT Listening\n", getpid());

    char *criu_mode = ((void*)0);
    criu_mode = getenv("LSAPI_CRIU");



    if (criu_mode) {
        if (*criu_mode == '0') {
             lscriu_dbg("LSCRIU (%d): Disabled by environment.\n", getpid());
             LSCRIU_Set_Initial_Start_Reqs(0);
        }
        else if (*criu_mode == '2') {
            lscriu_dbg("LSCRIU (%d): Disabled by environment.\n", getpid());
            s_native = 1;
        }
    }

    if (s_native && init_native_env() == -1)
        LSCRIU_Set_Initial_Start_Reqs(0);


    return 0;
}
