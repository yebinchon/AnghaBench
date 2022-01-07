
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* ne_header; } ;
typedef TYPE_2__ r_bin_ne_obj_t ;
struct TYPE_4__ {int targOS; } ;



__attribute__((used)) static char *__get_target_os(r_bin_ne_obj_t *bin) {
 switch (bin->ne_header->targOS) {
 case 1:
  return "OS/2";
 case 2:
  return "Windows";
 case 3:
  return "European MS-DOS 4.x";
 case 4:
  return "Windows 386";
 case 5:
  return "BOSS (Borland Operating System Services)";
 default:
  return "Unknown";
 }
}
