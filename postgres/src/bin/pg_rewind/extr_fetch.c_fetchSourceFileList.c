
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ datadir_source ;
 int libpqProcessFileList () ;
 int process_source_file ;
 int traverse_datadir (scalar_t__,int *) ;

void
fetchSourceFileList(void)
{
 if (datadir_source)
  traverse_datadir(datadir_source, &process_source_file);
 else
  libpqProcessFileList();
}
