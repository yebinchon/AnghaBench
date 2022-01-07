
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int s_requests_count ;

__attribute__((used)) static void lsapi_siguser2(int sig)
{

    ++s_requests_count;
}
