
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ queryFout; } ;


 int fflush (scalar_t__) ;
 TYPE_1__ pset ;
 scalar_t__ stdout ;

__attribute__((used)) static void
log_pre_callback(void)
{
 if (pset.queryFout && pset.queryFout != stdout)
  fflush(pset.queryFout);
}
