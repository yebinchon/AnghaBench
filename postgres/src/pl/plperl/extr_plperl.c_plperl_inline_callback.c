
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errcontext (char*) ;

__attribute__((used)) static void
plperl_inline_callback(void *arg)
{
 errcontext("PL/Perl anonymous code block");
}
