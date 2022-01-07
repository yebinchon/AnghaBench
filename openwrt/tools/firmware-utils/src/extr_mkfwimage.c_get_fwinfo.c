
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fw_info {int name; } ;


 struct fw_info* fw_info ;
 scalar_t__ strcmp (int ,char*) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static struct fw_info* get_fwinfo(char* board_name) {
 struct fw_info *fwinfo = fw_info;
 while(strlen(fwinfo->name)) {
  if(strcmp(fwinfo->name, board_name) == 0) {
   return fwinfo;
  }
  fwinfo++;
 }
 return ((void*)0);
}
