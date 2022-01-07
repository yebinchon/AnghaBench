
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ g_running ;

__attribute__((used)) static void lsapi_siguser1( int sig )
{
    g_running = 0;
}
