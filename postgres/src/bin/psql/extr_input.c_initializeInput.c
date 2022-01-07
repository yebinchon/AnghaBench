
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vars; } ;


 char* GetVariable (int ,char*) ;
 int MAXPGPATH ;
 int PSQLHISTORY ;
 int atexit (int ) ;
 int decode_history () ;
 int expand_tilde (scalar_t__*) ;
 int finishInput ;
 scalar_t__ get_home_path (char*) ;
 char* getenv (char*) ;
 scalar_t__ history_lines_added ;
 int initialize_readline () ;
 scalar_t__ pg_strdup (char const*) ;
 TYPE_1__ pset ;
 scalar_t__ psprintf (char*,char*,int ) ;
 scalar_t__ psql_history ;
 int read_history (scalar_t__) ;
 int rl_initialize () ;
 scalar_t__ strlen (char*) ;
 int useHistory ;
 int useReadline ;
 int using_history () ;

void
initializeInput(int flags)
{
 atexit(finishInput);
}
