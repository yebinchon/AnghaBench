
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int test_harness (int ,char*) ;
 int tm_signal_context_chk_fpu ;

int main(void)
{
 return test_harness(tm_signal_context_chk_fpu, "tm_signal_context_chk_fpu");
}
