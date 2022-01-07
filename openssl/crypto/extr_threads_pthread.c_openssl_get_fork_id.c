
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getpid () ;

int openssl_get_fork_id(void)
{
    return getpid();
}
