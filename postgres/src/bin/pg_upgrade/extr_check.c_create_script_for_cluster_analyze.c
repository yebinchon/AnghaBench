
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {char* bindir; } ;
struct TYPE_12__ {int major_version; } ;
struct TYPE_11__ {int user; scalar_t__ user_specified; } ;
struct TYPE_10__ {char* data; } ;
typedef TYPE_1__ PQExpBufferData ;
typedef int FILE ;


 char* ECHO_BLANK ;
 char* ECHO_QUOTE ;
 int GET_MAJOR_VERSION (int ) ;
 int SCRIPT_EXT ;
 int SCRIPT_PREFIX ;
 int S_IRWXU ;
 int appendPQExpBufferChar (TYPE_1__*,char) ;
 int appendPQExpBufferStr (TYPE_1__*,char*) ;
 int appendShellString (TYPE_1__*,int ) ;
 int check_ok () ;
 scalar_t__ chmod (char*,int ) ;
 int errno ;
 int fclose (int *) ;
 int * fopen_priv (char*,char*) ;
 int fprintf (int *,char*,...) ;
 int initPQExpBuffer (TYPE_1__*) ;
 TYPE_5__ new_cluster ;
 TYPE_4__ old_cluster ;
 TYPE_3__ os_info ;
 int pg_fatal (char*,char*,int ) ;
 int prep_status (char*) ;
 char* psprintf (char*,int ,int ) ;
 int strerror (int ) ;
 int termPQExpBuffer (TYPE_1__*) ;

void
create_script_for_cluster_analyze(char **analyze_script_file_name)
{
 FILE *script = ((void*)0);
 PQExpBufferData user_specification;

 prep_status("Creating script to analyze new cluster");

 initPQExpBuffer(&user_specification);
 if (os_info.user_specified)
 {
  appendPQExpBufferStr(&user_specification, "-U ");
  appendShellString(&user_specification, os_info.user);
  appendPQExpBufferChar(&user_specification, ' ');
 }

 *analyze_script_file_name = psprintf("%sanalyze_new_cluster.%s",
           SCRIPT_PREFIX, SCRIPT_EXT);

 if ((script = fopen_priv(*analyze_script_file_name, "w")) == ((void*)0))
  pg_fatal("could not open file \"%s\": %s\n",
     *analyze_script_file_name, strerror(errno));



 fprintf(script, "#!/bin/sh\n\n");





 fprintf(script, "echo %sThis script will generate minimal optimizer statistics rapidly%s\n",
   ECHO_QUOTE, ECHO_QUOTE);
 fprintf(script, "echo %sso your system is usable, and then gather statistics twice more%s\n",
   ECHO_QUOTE, ECHO_QUOTE);
 fprintf(script, "echo %swith increasing accuracy.  When it is done, your system will%s\n",
   ECHO_QUOTE, ECHO_QUOTE);
 fprintf(script, "echo %shave the default level of optimizer statistics.%s\n",
   ECHO_QUOTE, ECHO_QUOTE);
 fprintf(script, "echo%s\n\n", ECHO_BLANK);

 fprintf(script, "echo %sIf you have used ALTER TABLE to modify the statistics target for%s\n",
   ECHO_QUOTE, ECHO_QUOTE);
 fprintf(script, "echo %sany tables, you might want to remove them and restore them after%s\n",
   ECHO_QUOTE, ECHO_QUOTE);
 fprintf(script, "echo %srunning this script because they will delay fast statistics generation.%s\n",
   ECHO_QUOTE, ECHO_QUOTE);
 fprintf(script, "echo%s\n\n", ECHO_BLANK);

 fprintf(script, "echo %sIf you would like default statistics as quickly as possible, cancel%s\n",
   ECHO_QUOTE, ECHO_QUOTE);
 fprintf(script, "echo %sthis script and run:%s\n",
   ECHO_QUOTE, ECHO_QUOTE);
 fprintf(script, "echo %s    \"%s/vacuumdb\" %s--all %s%s\n", ECHO_QUOTE,
   new_cluster.bindir, user_specification.data,

   (GET_MAJOR_VERSION(old_cluster.major_version) >= 804) ?
   "--analyze-only" : "--analyze", ECHO_QUOTE);
 fprintf(script, "echo%s\n\n", ECHO_BLANK);

 fprintf(script, "\"%s/vacuumdb\" %s--all --analyze-in-stages\n",
   new_cluster.bindir, user_specification.data);

 if (GET_MAJOR_VERSION(old_cluster.major_version) < 804)
  fprintf(script, "\"%s/vacuumdb\" %s--all\n", new_cluster.bindir,
    user_specification.data);

 fprintf(script, "echo%s\n\n", ECHO_BLANK);
 fprintf(script, "echo %sDone%s\n",
   ECHO_QUOTE, ECHO_QUOTE);

 fclose(script);


 if (chmod(*analyze_script_file_name, S_IRWXU) != 0)
  pg_fatal("could not add execute permission to file \"%s\": %s\n",
     *analyze_script_file_name, strerror(errno));


 termPQExpBuffer(&user_specification);

 check_ok();
}
