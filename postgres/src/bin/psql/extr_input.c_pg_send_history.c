
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int histcontrol; } ;
struct TYPE_5__ {char* data; } ;
typedef TYPE_1__* PQExpBuffer ;


 int add_history (char*) ;
 int free (char*) ;
 int hctl_ignoredups ;
 int hctl_ignorespace ;
 int history_lines_added ;
 char* pg_strdup (char*) ;
 TYPE_3__ pset ;
 int resetPQExpBuffer (TYPE_1__*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;
 scalar_t__ useHistory ;

void
pg_send_history(PQExpBuffer history_buf)
{
}
