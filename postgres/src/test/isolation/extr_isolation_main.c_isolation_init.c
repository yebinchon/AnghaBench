
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t MAXPGPATH ;
 char* _ (char*) ;
 int add_stringlist_item (int *,char*) ;
 int dblist ;
 int exit (int) ;
 int fprintf (int ,char*,int) ;
 int saved_argv0 ;
 int stderr ;
 size_t strlcpy (int ,char*,size_t) ;

__attribute__((used)) static void
isolation_init(int argc, char **argv)
{
 size_t argv0_len;
 argv0_len = strlcpy(saved_argv0, argv[0], MAXPGPATH);
 if (argv0_len >= MAXPGPATH)
 {
  fprintf(stderr, _("path for isolationtester executable is longer than %d bytes\n"),
    (int) (MAXPGPATH - 1));
  exit(2);
 }


 add_stringlist_item(&dblist, "isolation_regression");
}
