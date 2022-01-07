
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int backtrace; } ;
struct TYPE_7__ {int data; } ;
typedef TYPE_1__ StringInfoData ;
typedef TYPE_2__ ErrorData ;


 int appendStringInfo (TYPE_1__*,char*,char*) ;
 int appendStringInfoString (TYPE_1__*,char*) ;
 int backtrace (void**,int ) ;
 char** backtrace_symbols (void**,int) ;
 int free (char**) ;
 int initStringInfo (TYPE_1__*) ;
 int lengthof (void**) ;

__attribute__((used)) static void
set_backtrace(ErrorData *edata, int num_skip)
{
 StringInfoData errtrace;

 initStringInfo(&errtrace);
 appendStringInfoString(&errtrace,
         "backtrace generation is not supported by this installation");


 edata->backtrace = errtrace.data;
}
