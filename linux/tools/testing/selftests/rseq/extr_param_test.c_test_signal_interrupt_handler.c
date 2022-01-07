
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int signals_delivered ;

__attribute__((used)) static void test_signal_interrupt_handler(int signo)
{
 signals_delivered++;
}
