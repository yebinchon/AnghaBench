
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int process_file_callback_t ;


 int recurse_dir (char const*,int *,int ) ;

void
traverse_datadir(const char *datadir, process_file_callback_t callback)
{
 recurse_dir(datadir, ((void*)0), callback);
}
