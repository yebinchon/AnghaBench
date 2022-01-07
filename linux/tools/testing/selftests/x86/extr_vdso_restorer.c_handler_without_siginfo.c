
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int handler_called ;

__attribute__((used)) static void handler_without_siginfo(int sig)
{
 handler_called = 1;
}
