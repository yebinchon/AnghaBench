
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_4__ {int Protect; scalar_t__ Type; } ;
typedef int RList ;
typedef int RDebugMap ;
typedef TYPE_1__ MEMORY_BASIC_INFORMATION ;


 scalar_t__ MEM_PRIVATE ;







 int R_PERM_R ;
 int R_PERM_RW ;
 int R_PERM_RWX ;
 int R_PERM_RX ;
 int R_PERM_W ;
 int R_PERM_X ;
 int free (char*) ;
 char* get_map_type (TYPE_1__*) ;
 int * r_debug_map_new (char*,scalar_t__,scalar_t__,int,int) ;
 int r_list_append (int *,int *) ;
 char* r_str_newf (char*,char*,char const*) ;

__attribute__((used)) static RDebugMap *add_map(RList *list, const char *name, ut64 addr, ut64 len, MEMORY_BASIC_INFORMATION *mbi) {
 int perm;
 char *map_type = get_map_type (mbi);

 switch (mbi->Protect) {
 case 134:
  perm = R_PERM_X;
  break;
 case 133:
  perm = R_PERM_RX;
  break;
 case 132:
  perm = R_PERM_RWX;
  break;
 case 130:
  perm = R_PERM_R;
  break;
 case 129:
  perm = R_PERM_RW;
  break;
 case 128:
  perm = R_PERM_W;
  break;
 case 131:
  perm = R_PERM_X;
  break;
 default:
  perm = 0;
 }
 char *map_name = r_str_newf ("%-8s %s", map_type, name);
 if (!map_name) {
  return ((void*)0);
 }
 RDebugMap *mr = r_debug_map_new (map_name, addr, addr + len, perm, mbi->Type == MEM_PRIVATE);
 free (map_name);
 if (mr) {
  r_list_append (list, mr);
 }
 return mr;
}
