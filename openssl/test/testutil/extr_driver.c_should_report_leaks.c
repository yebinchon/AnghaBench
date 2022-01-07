
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* getenv (char*) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int should_report_leaks(void)
{






    char *mem_debug_env = getenv("OPENSSL_DEBUG_MEMORY");

    return mem_debug_env == ((void*)0)
        || (strcmp(mem_debug_env, "0") && strcmp(mem_debug_env, ""));
}
