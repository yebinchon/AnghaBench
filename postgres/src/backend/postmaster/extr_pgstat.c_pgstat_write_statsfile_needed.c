
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ NIL ;
 scalar_t__ pending_write_requests ;

__attribute__((used)) static bool
pgstat_write_statsfile_needed(void)
{
 if (pending_write_requests != NIL)
  return 1;


 return 0;
}
