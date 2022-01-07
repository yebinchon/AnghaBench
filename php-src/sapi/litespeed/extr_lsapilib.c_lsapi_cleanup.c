
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int s_stop ;

__attribute__((used)) static void lsapi_cleanup(int signal)
{
    s_stop = signal;
}
