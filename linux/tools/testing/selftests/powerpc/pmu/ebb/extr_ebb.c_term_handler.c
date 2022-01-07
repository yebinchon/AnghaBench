
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 int dump_ebb_hw_state () ;
 int dump_summary_ebb_state () ;

__attribute__((used)) static void term_handler(int signal)
{
 dump_summary_ebb_state();
 dump_ebb_hw_state();
 abort();
}
