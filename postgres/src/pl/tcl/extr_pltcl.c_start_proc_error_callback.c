
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errcontext (char*,char const*) ;

__attribute__((used)) static void
start_proc_error_callback(void *arg)
{
 const char *gucname = (const char *) arg;


 errcontext("processing %s parameter", gucname);
}
