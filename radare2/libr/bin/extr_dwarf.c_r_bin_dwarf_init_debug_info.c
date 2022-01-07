
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ length; int capacity; int comp_units; } ;
typedef TYPE_1__ RBinDwarfDebugInfo ;
typedef int RBinDwarfCompUnit ;


 int DEBUG_INFO_CAPACITY ;
 int ENOMEM ;
 int calloc (int,int ) ;

__attribute__((used)) static int r_bin_dwarf_init_debug_info(RBinDwarfDebugInfo *inf) {
 if (!inf) {
  return -1;
 }
 inf->comp_units = calloc (sizeof (RBinDwarfCompUnit), DEBUG_INFO_CAPACITY);


 if (!inf->comp_units) {
  return -ENOMEM;
 }

 inf->capacity = DEBUG_INFO_CAPACITY;
 inf->length = 0;

 return 1;
}
