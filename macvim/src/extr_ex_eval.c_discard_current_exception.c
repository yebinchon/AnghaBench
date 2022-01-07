
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* FALSE ;
 int * current_exception ;
 void* did_throw ;
 int discard_exception (int *,void*) ;
 void* need_rethrow ;

void
discard_current_exception()
{
    discard_exception(current_exception, FALSE);
    current_exception = ((void*)0);
    did_throw = FALSE;
    need_rethrow = FALSE;
}
