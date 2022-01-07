
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* opts; } ;
typedef TYPE_2__ TableSpaceCacheEntry ;
struct TYPE_4__ {scalar_t__ effective_io_concurrency; } ;
typedef int Oid ;


 int effective_io_concurrency ;
 TYPE_2__* get_tablespace (int ) ;

int
get_tablespace_io_concurrency(Oid spcid)
{
 TableSpaceCacheEntry *spc = get_tablespace(spcid);

 if (!spc->opts || spc->opts->effective_io_concurrency < 0)
  return effective_io_concurrency;
 else
  return spc->opts->effective_io_concurrency;
}
