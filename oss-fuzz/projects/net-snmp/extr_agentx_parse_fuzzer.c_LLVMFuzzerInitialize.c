
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debug_register_tokens (char*) ;
 int * getenv (char*) ;
 int snmp_enable_stderrlog () ;
 int snmp_set_do_debugging (int) ;

int LLVMFuzzerInitialize(int *argc, char ***argv) {
    if (getenv("NETSNMP_DEBUGGING") != ((void*)0)) {




        snmp_enable_stderrlog();
        snmp_set_do_debugging(1);
        debug_register_tokens("");
    }
    return 0;
}
