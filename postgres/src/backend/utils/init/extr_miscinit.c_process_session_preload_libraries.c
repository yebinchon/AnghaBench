
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int load_libraries (int ,char*,int) ;
 int local_preload_libraries_string ;
 int session_preload_libraries_string ;

void
process_session_preload_libraries(void)
{
 load_libraries(session_preload_libraries_string,
       "session_preload_libraries",
       0);
 load_libraries(local_preload_libraries_string,
       "local_preload_libraries",
       1);
}
