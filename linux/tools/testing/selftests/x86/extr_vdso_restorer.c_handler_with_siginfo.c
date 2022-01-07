
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int siginfo_t ;


 int handler_called ;

__attribute__((used)) static void handler_with_siginfo(int sig, siginfo_t *info, void *ctx_void)
{
 handler_called = 1;
}
