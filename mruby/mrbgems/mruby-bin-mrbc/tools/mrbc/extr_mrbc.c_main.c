
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mrbc_args {char* prog; char* outfile; int idx; scalar_t__ check_syntax; scalar_t__ initname; } ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef int FILE ;


 int C_EXT ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int MRB_DUMP_OK ;
 int RITEBIN_EXT ;
 int cleanup (int *,struct mrbc_args*) ;
 int dump_file (int *,int *,char*,int ,struct mrbc_args*) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int fputs (char*,int ) ;
 char* get_outfilename (int *,char*,int ) ;
 int load_file (int *,struct mrbc_args*) ;
 scalar_t__ mrb_nil_p (int ) ;
 int * mrb_open () ;
 int mrb_proc_ptr (int ) ;
 int parse_args (int *,int,char**,struct mrbc_args*) ;
 int printf (char*,char*,char*) ;
 int stderr ;
 int * stdout ;
 scalar_t__ strcmp (char*,char*) ;
 int usage (char*) ;

int
main(int argc, char **argv)
{
  mrb_state *mrb = mrb_open();
  int n, result;
  struct mrbc_args args;
  FILE *wfp;
  mrb_value load;

  if (mrb == ((void*)0)) {
    fputs("Invalid mrb_state, exiting mrbc\n", stderr);
    return EXIT_FAILURE;
  }

  n = parse_args(mrb, argc, argv, &args);
  if (n < 0) {
    cleanup(mrb, &args);
    usage(argv[0]);
    return EXIT_FAILURE;
  }
  if (n == argc) {
    fprintf(stderr, "%s: no program file given\n", args.prog);
    return EXIT_FAILURE;
  }
  if (args.outfile == ((void*)0) && !args.check_syntax) {
    if (n + 1 == argc) {
      args.outfile = get_outfilename(mrb, argv[n], args.initname ? C_EXT : RITEBIN_EXT);
    }
    else {
      fprintf(stderr, "%s: output file should be specified to compile multiple files\n", args.prog);
      return EXIT_FAILURE;
    }
  }

  args.idx = n;
  load = load_file(mrb, &args);
  if (mrb_nil_p(load)) {
    cleanup(mrb, &args);
    return EXIT_FAILURE;
  }
  if (args.check_syntax) {
    printf("%s:%s:Syntax OK\n", args.prog, argv[n]);
  }

  if (args.check_syntax) {
    cleanup(mrb, &args);
    return EXIT_SUCCESS;
  }

  if (args.outfile) {
    if (strcmp("-", args.outfile) == 0) {
      wfp = stdout;
    }
    else if ((wfp = fopen(args.outfile, "wb")) == ((void*)0)) {
      fprintf(stderr, "%s: cannot open output file:(%s)\n", args.prog, args.outfile);
      return EXIT_FAILURE;
    }
  }
  else {
    fprintf(stderr, "Output file is required\n");
    return EXIT_FAILURE;
  }
  result = dump_file(mrb, wfp, args.outfile, mrb_proc_ptr(load), &args);
  fclose(wfp);
  cleanup(mrb, &args);
  if (result != MRB_DUMP_OK) {
    return EXIT_FAILURE;
  }
  return EXIT_SUCCESS;
}
