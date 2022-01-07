
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEBUG2 ;
 int ERRCODE_INSUFFICIENT_RESOURCES ;
 int FATAL ;
 scalar_t__ FD_MINFREE ;
 scalar_t__ Min (int,scalar_t__) ;
 scalar_t__ NUM_RESERVED_FDS ;
 int count_usable_fds (scalar_t__,int*,int*) ;
 int elog (int ,char*,scalar_t__,int,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,scalar_t__,scalar_t__) ;
 int errmsg (char*) ;
 scalar_t__ max_files_per_process ;
 scalar_t__ max_safe_fds ;

void
set_max_safe_fds(void)
{
 int usable_fds;
 int already_open;
 count_usable_fds(max_files_per_process,
      &usable_fds, &already_open);

 max_safe_fds = Min(usable_fds, max_files_per_process - already_open);




 max_safe_fds -= NUM_RESERVED_FDS;




 if (max_safe_fds < FD_MINFREE)
  ereport(FATAL,
    (errcode(ERRCODE_INSUFFICIENT_RESOURCES),
     errmsg("insufficient file descriptors available to start server process"),
     errdetail("System allows %d, we need at least %d.",
         max_safe_fds + NUM_RESERVED_FDS,
         FD_MINFREE + NUM_RESERVED_FDS)));

 elog(DEBUG2, "max_safe_fds = %d, usable_fds = %d, already_open = %d",
   max_safe_fds, usable_fds, already_open);
}
