
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; int command; int use_file; } ;
typedef TYPE_1__ CState ;


 int fprintf (int ,char*,int,int,char const*,int,char const*) ;
 int stderr ;

__attribute__((used)) static void
commandFailed(CState *st, const char *cmd, const char *message)
{
 fprintf(stderr,
   "client %d aborted in command %d (%s) of script %d; %s\n",
   st->id, st->command, cmd, st->use_file, message);
}
