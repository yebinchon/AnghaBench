
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pathtype; } ;
typedef TYPE_1__ Path ;


 int IS_DUMMY_APPEND (TYPE_1__*) ;
bool
is_projection_capable_path(Path *path)
{

 switch (path->pathtype)
 {
  case 138:
  case 135:
  case 129:
  case 128:
  case 130:
  case 136:
  case 137:
  case 133:
  case 134:
  case 131:
   return 0;
  case 139:






   return IS_DUMMY_APPEND(path);
  case 132:







   return 0;
  default:
   break;
 }
 return 1;
}
