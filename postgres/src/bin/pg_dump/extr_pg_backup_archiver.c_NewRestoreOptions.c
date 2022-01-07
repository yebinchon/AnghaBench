
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dumpSections; int promptPassword; int format; } ;
typedef TYPE_1__ RestoreOptions ;


 int DUMP_UNSECTIONED ;
 int TRI_DEFAULT ;
 int archUnknown ;
 scalar_t__ pg_malloc0 (int) ;

RestoreOptions *
NewRestoreOptions(void)
{
 RestoreOptions *opts;

 opts = (RestoreOptions *) pg_malloc0(sizeof(RestoreOptions));


 opts->format = archUnknown;
 opts->promptPassword = TRI_DEFAULT;
 opts->dumpSections = DUMP_UNSECTIONED;

 return opts;
}
