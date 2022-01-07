
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Sdb ;


 char* sdb_const_get (int *,char*,int ) ;
 int * sdb_ns (int *,char*,int) ;

__attribute__((used)) static const char* get_compile_time(Sdb *binFileSdb) {
 Sdb *info_ns = sdb_ns (binFileSdb, "info", 0);
 const char *timeDateStamp_string = sdb_const_get (info_ns,
  "image_file_header.TimeDateStamp_string", 0);
 return timeDateStamp_string;
}
