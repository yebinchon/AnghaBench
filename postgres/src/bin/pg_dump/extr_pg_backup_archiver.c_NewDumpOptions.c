
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DumpOptions ;


 int InitDumpOptions (int *) ;
 scalar_t__ pg_malloc (int) ;

DumpOptions *
NewDumpOptions(void)
{
 DumpOptions *opts = (DumpOptions *) pg_malloc(sizeof(DumpOptions));

 InitDumpOptions(opts);
 return opts;
}
