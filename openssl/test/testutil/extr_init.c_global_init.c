
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getenv (char*) ;
 int setup_trace (int ) ;

int global_init(void)
{

    setup_trace(getenv("OPENSSL_TRACE"));


    return 1;
}
