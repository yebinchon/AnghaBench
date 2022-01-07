
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut64 ;
typedef int RCore ;


 int r_core_block_size (int *,int ) ;
 int r_core_cmd0 (int *,char const*) ;
 int r_core_seek (int *,int ,int) ;
 int r_num_get (int *,char const*) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static void foreach_pairs(RCore *core, const char *cmd, const char *each) {
 const char *arg;
 int pair = 0;
 for (arg = each ; ; ) {
  char *next = strchr (arg, ' ');
  if (next) {
   *next = 0;
  }
  if (arg && *arg) {
   ut64 n = r_num_get (((void*)0), arg);
   if (pair%2) {
    r_core_block_size (core, n);
    r_core_cmd0 (core, cmd);
   } else {
    r_core_seek (core, n, 1);
   }
   pair++;
  }
  if (!next) {
   break;
  }
  arg = next + 1;
 }
}
