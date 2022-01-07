
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errcontext (char*,char const*) ;
 int errposition (int ) ;

__attribute__((used)) static void
pts_error_callback(void *arg)
{
 const char *str = (const char *) arg;

 errcontext("invalid type name \"%s\"", str);






 errposition(0);
}
