
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {char* line; } ;
struct TYPE_5__ {int topt; } ;
struct TYPE_6__ {TYPE_1__ popt; } ;
typedef int FILE ;


 int BEGIN_ITERATE_HISTORY (TYPE_3__*) ;
 int ClosePager (int *) ;
 int END_ITERATE_HISTORY () ;
 int INT_MAX ;
 int * PageOutput (int ,int *) ;
 TYPE_3__* cur_hist ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int *,char*,char*) ;
 int pg_log_error (char*,...) ;
 TYPE_2__ pset ;
 int useHistory ;

bool
printHistory(const char *fname, unsigned short int pager)
{
 pg_log_error("history is not supported by this installation");
 return 0;

}
