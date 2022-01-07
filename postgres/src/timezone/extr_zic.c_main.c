
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ptrdiff_t ;
struct TYPE_5__ {char* l_filename; int l_linenum; char* l_from; char* l_to; } ;
struct TYPE_4__ {int * z_name; } ;


 int EOF ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 char* PG_VERSION ;
 int S_IWGRP ;
 int S_IWOTH ;
 int TYPE_BIT (int ) ;
 char* TZDEFAULT ;
 char* TZDEFRULES ;
 char* ZIC_BLOAT_DEFAULT ;
 char* _ (char*) ;
 int adjleap () ;
 int associate () ;
 int bloat ;
 int change_directory (char*) ;
 int close_file (int ,int *,int *) ;
 char* directory ;
 int dolink (char*,char*,int) ;
 int eat (char*,int) ;
 int error (char*,...) ;
 scalar_t__ errors ;
 scalar_t__ fclose (int ) ;
 scalar_t__ ferror (int ) ;
 int fprintf (int ,char*,char*,...) ;
 int getopt (int,char**,char*) ;
 int infile (char*) ;
 char* lcltime ;
 char* leapsec ;
 TYPE_3__* links ;
 int nlinks ;
 int noise ;
 int nzones ;
 char* optarg ;
 int optind ;
 int outzone (TYPE_1__*,int) ;
 int print_abbrevs ;
 int print_cutoff ;
 int printf (char*,char*) ;
 char* progname ;
 char* psxrules ;
 int stderr ;
 int stdout ;
 scalar_t__ strcmp (char*,char*) ;
 void* strdup (char*) ;
 int time (int *) ;
 int timerange_option (char*) ;
 char* tzdefault ;
 int umask (int) ;
 int usage (int ,int) ;
 int warning (char*) ;
 scalar_t__ warnings ;
 char* yitcommand ;
 int zic_t ;
 TYPE_1__* zones ;

int
main(int argc, char **argv)
{
 int c,
    k;
 ptrdiff_t i,
    j;
 bool timerange_given = 0;


 umask(umask(S_IWGRP | S_IWOTH) | (S_IWGRP | S_IWOTH));

 progname = argv[0];
 if (TYPE_BIT(zic_t) <64)
 {
  fprintf(stderr, "%s: %s\n", progname,
    _("wild compilation-time specification of zic_t"));
  return EXIT_FAILURE;
 }
 for (k = 1; k < argc; k++)
  if (strcmp(argv[k], "--version") == 0)
  {
   printf("zic %s\n", PG_VERSION);
   close_file(stdout, ((void*)0), ((void*)0));
   return EXIT_SUCCESS;
  }
  else if (strcmp(argv[k], "--help") == 0)
  {
   usage(stdout, EXIT_SUCCESS);
  }
 while ((c = getopt(argc, argv, "b:d:l:L:p:Pr:st:vy:")) != EOF && c != -1)
  switch (c)
  {
   default:
    usage(stderr, EXIT_FAILURE);
   case 'b':
    if (strcmp(optarg, "slim") == 0)
    {
     if (0 < bloat)
      error(_("incompatible -b options"));
     bloat = -1;
    }
    else if (strcmp(optarg, "fat") == 0)
    {
     if (bloat < 0)
      error(_("incompatible -b options"));
     bloat = 1;
    }
    else
     error(_("invalid option: -b '%s'"), optarg);
    break;
   case 'd':
    if (directory == ((void*)0))
     directory = strdup(optarg);
    else
    {
     fprintf(stderr,
       _("%s: More than one -d option specified\n"),
       progname);
     return EXIT_FAILURE;
    }
    break;
   case 'l':
    if (lcltime == ((void*)0))
     lcltime = strdup(optarg);
    else
    {
     fprintf(stderr,
       _("%s: More than one -l option specified\n"),
       progname);
     return EXIT_FAILURE;
    }
    break;
   case 'p':
    if (psxrules == ((void*)0))
     psxrules = strdup(optarg);
    else
    {
     fprintf(stderr,
       _("%s: More than one -p option specified\n"),
       progname);
     return EXIT_FAILURE;
    }
    break;
   case 't':
    if (tzdefault != ((void*)0))
    {
     fprintf(stderr,
       _("%s: More than one -t option"
         " specified\n"),
       progname);
     return EXIT_FAILURE;
    }
    tzdefault = optarg;
    break;
   case 'y':
    if (yitcommand == ((void*)0))
    {
     warning(_("-y is obsolescent"));
     yitcommand = strdup(optarg);
    }
    else
    {
     fprintf(stderr,
       _("%s: More than one -y option specified\n"),
       progname);
     return EXIT_FAILURE;
    }
    break;
   case 'L':
    if (leapsec == ((void*)0))
     leapsec = strdup(optarg);
    else
    {
     fprintf(stderr,
       _("%s: More than one -L option specified\n"),
       progname);
     return EXIT_FAILURE;
    }
    break;
   case 'v':
    noise = 1;
    break;
   case 'P':
    print_abbrevs = 1;
    print_cutoff = time(((void*)0));
    break;
   case 'r':
    if (timerange_given)
    {
     fprintf(stderr,
       _("%s: More than one -r option specified\n"),
       progname);
     return EXIT_FAILURE;
    }
    if (!timerange_option(optarg))
    {
     fprintf(stderr,
       _("%s: invalid time range: %s\n"),
       progname, optarg);
     return EXIT_FAILURE;
    }
    timerange_given = 1;
    break;
   case 's':
    warning(_("-s ignored"));
    break;
  }
 if (optind == argc - 1 && strcmp(argv[optind], "=") == 0)
  usage(stderr, EXIT_FAILURE);
 if (bloat == 0)
  bloat = strcmp(ZIC_BLOAT_DEFAULT, "slim") == 0 ? -1 : 1;
 if (directory == ((void*)0))
  directory = "data";
 if (tzdefault == ((void*)0))
  tzdefault = TZDEFAULT;
 if (yitcommand == ((void*)0))
  yitcommand = "yearistype";

 if (optind < argc && leapsec != ((void*)0))
 {
  infile(leapsec);
  adjleap();
 }

 for (k = optind; k < argc; k++)
  infile(argv[k]);
 if (errors)
  return EXIT_FAILURE;
 associate();
 change_directory(directory);
 for (i = 0; i < nzones; i = j)
 {



  for (j = i + 1; j < nzones && zones[j].z_name == ((void*)0); ++j)
   continue;
  outzone(&zones[i], j - i);
 }




 for (i = 0; i < nlinks; ++i)
 {
  eat(links[i].l_filename, links[i].l_linenum);
  dolink(links[i].l_from, links[i].l_to, 0);
  if (noise)
   for (j = 0; j < nlinks; ++j)
    if (strcmp(links[i].l_to,
         links[j].l_from) == 0)
     warning(_("link to link"));
 }
 if (lcltime != ((void*)0))
 {
  eat(_("command line"), 1);
  dolink(lcltime, tzdefault, 1);
 }
 if (psxrules != ((void*)0))
 {
  eat(_("command line"), 1);
  dolink(psxrules, TZDEFRULES, 1);
 }
 if (warnings && (ferror(stderr) || fclose(stderr) != 0))
  return EXIT_FAILURE;
 return errors ? EXIT_FAILURE : EXIT_SUCCESS;
}
