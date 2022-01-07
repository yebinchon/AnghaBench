
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REG_ICASE ;
 int REG_NOSUB ;
 int alias () ;
 int atoi (int ) ;
 int debug_opt_scan (int ) ;
 int extended_totals ;
 int fatal (char*,char*,...) ;
 int getopt_long (int,char**,char*,int ,int *) ;
 int getpagesize () ;
 int link_slabs () ;
 int optarg ;
 int optind ;
 int optopt ;
 int opts ;
 int output_lines ;
 int output_slabs () ;
 int page_size ;
 int pattern ;
 int read_slab_dir () ;
 int regcomp (int *,char*,int) ;
 int rename_slabs () ;
 int set_debug ;
 int show_activity ;
 int show_alias ;
 int show_bytes ;
 int show_empty ;
 int show_first_alias ;
 int show_inverted ;
 int show_numa ;
 int show_ops ;
 int show_report ;
 int show_single_ref ;
 int show_slab ;
 int show_totals ;
 int show_track ;
 int shrink ;
 int skip_zero ;
 int sort_active ;
 int sort_loss ;
 int sort_partial ;
 int sort_size ;
 int sort_slabs () ;
 int totals () ;
 int unreclaim_only ;
 int usage () ;
 int validate ;
 int xtotals () ;

int main(int argc, char *argv[])
{
 int c;
 int err;
 char *pattern_source;

 page_size = getpagesize();

 while ((c = getopt_long(argc, argv, "aABd::DefhilLnN:oPrsStTUvXz1",
      opts, ((void*)0))) != -1)
  switch (c) {
  case 'a':
   show_alias = 1;
   break;
  case 'A':
   sort_active = 1;
   break;
  case 'B':
   show_bytes = 1;
   break;
  case 'd':
   set_debug = 1;
   if (!debug_opt_scan(optarg))
    fatal("Invalid debug option '%s'\n", optarg);
   break;
  case 'D':
   show_activity = 1;
   break;
  case 'e':
   show_empty = 1;
   break;
  case 'f':
   show_first_alias = 1;
   break;
  case 'h':
   usage();
   return 0;
  case 'i':
   show_inverted = 1;
   break;
  case 'l':
   show_slab = 1;
   break;
  case 'L':
   sort_loss = 1;
   break;
  case 'n':
   show_numa = 1;
   break;
  case 'N':
   if (optarg) {
    output_lines = atoi(optarg);
    if (output_lines < 1)
     output_lines = 1;
   }
   break;
  case 'o':
   show_ops = 1;
   break;
  case 'r':
   show_report = 1;
   break;
  case 'P':
   sort_partial = 1;
   break;
  case 's':
   shrink = 1;
   break;
  case 'S':
   sort_size = 1;
   break;
  case 't':
   show_track = 1;
   break;
  case 'T':
   show_totals = 1;
   break;
  case 'U':
   unreclaim_only = 1;
   break;
  case 'v':
   validate = 1;
   break;
  case 'X':
   if (output_lines == -1)
    output_lines = 1;
   extended_totals = 1;
   show_bytes = 1;
   break;
  case 'z':
   skip_zero = 0;
   break;
  case '1':
   show_single_ref = 1;
   break;
  default:
   fatal("%s: Invalid option '%c'\n", argv[0], optopt);

 }

 if (!show_slab && !show_alias && !show_track && !show_report
  && !validate && !shrink && !set_debug && !show_ops)
   show_slab = 1;

 if (argc > optind)
  pattern_source = argv[optind];
 else
  pattern_source = ".*";

 err = regcomp(&pattern, pattern_source, REG_ICASE|REG_NOSUB);
 if (err)
  fatal("%s: Invalid pattern '%s' code %d\n",
   argv[0], pattern_source, err);
 read_slab_dir();
 if (show_alias) {
  alias();
 } else if (extended_totals) {
  xtotals();
 } else if (show_totals) {
  totals();
 } else {
  link_slabs();
  rename_slabs();
  sort_slabs();
  output_slabs();
 }
 return 0;
}
