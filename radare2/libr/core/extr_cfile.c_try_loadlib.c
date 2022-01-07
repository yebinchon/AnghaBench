
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int RCore ;


 int r_core_bin_load (int *,char const*,int ) ;
 int * r_core_file_open (int *,char const*,int ,int ) ;

__attribute__((used)) static bool try_loadlib(RCore *core, const char *lib, ut64 addr) {
 if (r_core_file_open (core, lib, 0, addr) != ((void*)0)) {
  r_core_bin_load (core, lib, addr);
  return 1;
 }
 return 0;
}
