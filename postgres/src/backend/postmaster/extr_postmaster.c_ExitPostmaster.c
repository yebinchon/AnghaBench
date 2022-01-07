
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_INTERNAL_ERROR ;
 int LOG ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*) ;
 int errmsg_internal (char*) ;
 int proc_exit (int) ;
 scalar_t__ pthread_is_threaded_np () ;

__attribute__((used)) static void
ExitPostmaster(int status)
{
 proc_exit(status);
}
