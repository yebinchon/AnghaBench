
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_restricted_library_name (char const*) ;
 char* expand_dynamic_library_name (char const*) ;
 int internal_load_library (char*) ;
 int internal_unload_library (char*) ;
 int pfree (char*) ;

void
load_file(const char *filename, bool restricted)
{
 char *fullname;


 if (restricted)
  check_restricted_library_name(filename);


 fullname = expand_dynamic_library_name(filename);


 internal_unload_library(fullname);


 (void) internal_load_library(fullname);

 pfree(fullname);
}
