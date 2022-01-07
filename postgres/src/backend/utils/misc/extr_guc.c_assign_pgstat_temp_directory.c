
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERROR ;
 int free (char*) ;
 char* guc_malloc (int ,scalar_t__) ;
 char* pgstat_stat_directory ;
 char* pgstat_stat_filename ;
 char* pgstat_stat_tmpname ;
 int sprintf (char*,char*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void
assign_pgstat_temp_directory(const char *newval, void *extra)
{

 char *dname;
 char *tname;
 char *fname;


 dname = guc_malloc(ERROR, strlen(newval) + 1);
 sprintf(dname, "%s", newval);


 tname = guc_malloc(ERROR, strlen(newval) + 12);
 sprintf(tname, "%s/global.tmp", newval);
 fname = guc_malloc(ERROR, strlen(newval) + 13);
 sprintf(fname, "%s/global.stat", newval);

 if (pgstat_stat_directory)
  free(pgstat_stat_directory);
 pgstat_stat_directory = dname;
 if (pgstat_stat_tmpname)
  free(pgstat_stat_tmpname);
 pgstat_stat_tmpname = tname;
 if (pgstat_stat_filename)
  free(pgstat_stat_filename);
 pgstat_stat_filename = fname;
}
