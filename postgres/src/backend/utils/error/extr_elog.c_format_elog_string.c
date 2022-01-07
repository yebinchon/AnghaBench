
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* message_id; char* message; scalar_t__ domain; int saved_errno; } ;
typedef int MemoryContext ;
typedef TYPE_1__ ErrorData ;


 int EVALUATE_MESSAGE (scalar_t__,int ,int,int) ;
 int ErrorContext ;
 int MemSet (TYPE_1__*,int ,int) ;
 int MemoryContextSwitchTo (int ) ;
 scalar_t__ PG_TEXTDOMAIN (char*) ;
 int message ;
 scalar_t__ save_format_domain ;
 int save_format_errnumber ;

char *
format_elog_string(const char *fmt,...)
{
 ErrorData errdata;
 ErrorData *edata;
 MemoryContext oldcontext;


 edata = &errdata;
 MemSet(edata, 0, sizeof(ErrorData));

 edata->domain = save_format_domain ? save_format_domain : PG_TEXTDOMAIN("postgres");

 edata->saved_errno = save_format_errnumber;

 oldcontext = MemoryContextSwitchTo(ErrorContext);

 edata->message_id = fmt;
 EVALUATE_MESSAGE(edata->domain, message, 0, 1);

 MemoryContextSwitchTo(oldcontext);

 return edata->message;
}
