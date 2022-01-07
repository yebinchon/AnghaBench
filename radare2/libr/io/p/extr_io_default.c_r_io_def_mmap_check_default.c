
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int r_return_val_if_fail (int ,int) ;
 scalar_t__ r_str_startswith (char const*,char*) ;
 int strlen (char*) ;
 int strncmp (char const*,char*,int) ;
 char* strstr (char const*,char*) ;

__attribute__((used)) static bool r_io_def_mmap_check_default (const char *filename) {
 r_return_val_if_fail (filename && *filename, 0);
 if (r_str_startswith (filename, "file://")) {
  filename += strlen ("file://");
 }
 const char * peekaboo = (!strncmp (filename, "nocache://", 10))
  ? ((void*)0) : strstr (filename, "://");
 return (!peekaboo || (peekaboo - filename) > 10);
}
