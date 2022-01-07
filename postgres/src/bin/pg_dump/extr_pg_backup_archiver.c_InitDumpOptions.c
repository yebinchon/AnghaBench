
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int include_everything; int dumpSections; } ;
typedef TYPE_1__ DumpOptions ;


 int DUMP_UNSECTIONED ;
 int memset (TYPE_1__*,int ,int) ;

void
InitDumpOptions(DumpOptions *opts)
{
 memset(opts, 0, sizeof(DumpOptions));

 opts->include_everything = 1;
 opts->dumpSections = DUMP_UNSECTIONED;
}
