
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int error; int mmgr; } ;
struct TYPE_6__ {int z; int y; int x; } ;
typedef scalar_t__ HPDF_STATUS ;
typedef TYPE_1__ HPDF_Point3D ;
typedef TYPE_2__* HPDF_Dict ;
typedef int HPDF_Array ;


 scalar_t__ HPDF_Array_AddReal (int ,int ) ;
 int HPDF_Array_New (int ) ;
 scalar_t__ HPDF_Dict_Add (TYPE_2__*,char const*,int ) ;
 scalar_t__ HPDF_Error_GetCode (int ) ;
 scalar_t__ HPDF_OK ;

HPDF_STATUS
HPDF_Dict_AddPoint3D(HPDF_Dict dict, const char* key, HPDF_Point3D point)
{
 HPDF_Array array;
 HPDF_STATUS ret = HPDF_OK;
 array = HPDF_Array_New (dict->mmgr);
 if (!array)
  return HPDF_Error_GetCode ( dict->error);

 if (HPDF_Dict_Add (dict, key, array) != HPDF_OK)
  return HPDF_Error_GetCode ( dict->error);

 ret += HPDF_Array_AddReal(array, point.x);
 ret += HPDF_Array_AddReal(array, point.y);
 ret += HPDF_Array_AddReal(array, point.z);

 return ret;
}
