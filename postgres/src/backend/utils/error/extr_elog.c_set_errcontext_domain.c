
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* context_domain; } ;
typedef TYPE_1__ ErrorData ;


 int CHECK_STACK_DEPTH () ;
 char const* PG_TEXTDOMAIN (char*) ;
 TYPE_1__* errordata ;
 size_t errordata_stack_depth ;

int
set_errcontext_domain(const char *domain)
{
 ErrorData *edata = &errordata[errordata_stack_depth];


 CHECK_STACK_DEPTH();


 edata->context_domain = domain ? domain : PG_TEXTDOMAIN("postgres");

 return 0;
}
