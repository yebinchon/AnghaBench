
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errcontext (char*) ;

__attribute__((used)) static void
plpython_inline_error_callback(void *arg)
{
 errcontext("PL/Python anonymous code block");
}
