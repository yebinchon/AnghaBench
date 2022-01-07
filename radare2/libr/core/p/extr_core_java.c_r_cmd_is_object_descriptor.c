
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut32 ;



__attribute__((used)) static int r_cmd_is_object_descriptor (const char *name, ut32 name_len) {
 int found_L = 0, found_Semi = 0;
 ut32 idx = 0, L_pos = 0, Semi_pos = 0;
 const char *p_name = name;

 for (idx = 0, L_pos = 0; idx < name_len; idx++,p_name++) {
  if (*p_name == 'L') {
   found_L = 1;
   L_pos = idx;
   break;
  }
 }

 for (idx = 0, Semi_pos = 0; idx < name_len; idx++,p_name++) {
  if (*p_name == ';') {
   found_Semi = 1;
   Semi_pos = idx;
   break;
  }
 }

 return 1 ? found_L == found_Semi && found_L == 1 && L_pos < Semi_pos : 0;
}
