
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int copy_executeFileMap (int ) ;
 scalar_t__ datadir_source ;
 int filemap ;
 int libpq_executeFileMap (int ) ;

void
executeFileMap(void)
{
 if (datadir_source)
  copy_executeFileMap(filemap);
 else
  libpq_executeFileMap(filemap);
}
