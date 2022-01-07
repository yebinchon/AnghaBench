
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test_filter {int whatever; } ;


 int bfree (struct test_filter*) ;
 int gs_effect_destroy (int ) ;
 int obs_enter_graphics () ;
 int obs_leave_graphics () ;

__attribute__((used)) static void filter_destroy(void *data)
{
 struct test_filter *tf = data;

 if (tf) {
  obs_enter_graphics();

  gs_effect_destroy(tf->whatever);
  bfree(tf);

  obs_leave_graphics();
 }
}
