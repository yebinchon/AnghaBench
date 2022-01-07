
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_4__ {scalar_t__ RegionSize; scalar_t__ BaseAddress; } ;
typedef int RList ;
typedef int RDebugMap ;
typedef TYPE_1__ MEMORY_BASIC_INFORMATION ;


 int * add_map (int *,char const*,int ,int ,TYPE_1__*) ;

__attribute__((used)) static inline RDebugMap *add_map_reg(RList *list, const char *name, MEMORY_BASIC_INFORMATION *mbi) {
 return add_map (list, name, (ut64)(size_t)mbi->BaseAddress, (ut64)mbi->RegionSize, mbi);
}
