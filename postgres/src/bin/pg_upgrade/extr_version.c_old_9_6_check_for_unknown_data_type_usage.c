
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int output_path ;
typedef int ClusterInfo ;


 int MAXPGPATH ;
 int PG_REPORT ;
 scalar_t__ check_for_data_type_usage (int *,char*,char*) ;
 int check_ok () ;
 int pg_fatal (char*,char*) ;
 int pg_log (int ,char*) ;
 int prep_status (char*) ;
 int snprintf (char*,int,char*) ;

void
old_9_6_check_for_unknown_data_type_usage(ClusterInfo *cluster)
{
 char output_path[MAXPGPATH];

 prep_status("Checking for invalid \"unknown\" user columns");

 snprintf(output_path, sizeof(output_path), "tables_using_unknown.txt");

 if (check_for_data_type_usage(cluster, "pg_catalog.unknown", output_path))
 {
  pg_log(PG_REPORT, "fatal\n");
  pg_fatal("Your installation contains the \"unknown\" data type in user tables.  This\n"
     "data type is no longer allowed in tables, so this cluster cannot currently\n"
     "be upgraded.  You can remove the problem tables and restart the upgrade.\n"
     "A list of the problem columns is in the file:\n"
     "    %s\n\n", output_path);
 }
 else
  check_ok();
}
