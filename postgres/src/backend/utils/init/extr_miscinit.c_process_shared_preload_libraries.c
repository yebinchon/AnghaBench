
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int load_libraries (int ,char*,int) ;
 int process_shared_preload_libraries_in_progress ;
 int shared_preload_libraries_string ;

void
process_shared_preload_libraries(void)
{
 process_shared_preload_libraries_in_progress = 1;
 load_libraries(shared_preload_libraries_string,
       "shared_preload_libraries",
       0);
 process_shared_preload_libraries_in_progress = 0;
}
