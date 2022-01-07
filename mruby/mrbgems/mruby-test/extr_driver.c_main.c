
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_state ;
typedef int mrb_bool ;


 int EXIT_FAILURE ;
 int FALSE ;
 int TRUE ;
 int eval_test (int *) ;
 int fprintf (int ,char*) ;
 int mrb_close (int *) ;
 int mrb_init_test_driver (int *,int ) ;
 int mrb_load_irep (int *,int ) ;
 int * mrb_open () ;
 int mrbgemtest_init (int *) ;
 int mrbtest_assert_irep ;
 int print_hint () ;
 int printf (char*) ;
 int stderr ;

int
main(int argc, char **argv)
{
  mrb_state *mrb;
  int ret;
  mrb_bool verbose = FALSE;

  print_hint();


  mrb = mrb_open();
  if (mrb == ((void*)0)) {
    fprintf(stderr, "Invalid mrb_state, exiting test driver");
    return EXIT_FAILURE;
  }

  if (argc == 2 && argv[1][0] == '-' && argv[1][1] == 'v') {
    printf("verbose mode: enable\n\n");
    verbose = TRUE;
  }

  mrb_init_test_driver(mrb, verbose);
  mrb_load_irep(mrb, mrbtest_assert_irep);
  mrbgemtest_init(mrb);
  ret = eval_test(mrb);
  mrb_close(mrb);

  return ret;
}
