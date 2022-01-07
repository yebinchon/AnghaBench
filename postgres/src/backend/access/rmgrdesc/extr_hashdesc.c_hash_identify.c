
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
 int XLR_INFO_MASK ;

const char *
hash_identify(uint8 info)
{
 const char *id = ((void*)0);

 switch (info & ~XLR_INFO_MASK)
 {
  case 137:
   id = "INIT_META_PAGE";
   break;
  case 138:
   id = "INIT_BITMAP_PAGE";
   break;
  case 136:
   id = "INSERT";
   break;
  case 140:
   id = "ADD_OVFL_PAGE";
   break;
  case 134:
   id = "SPLIT_ALLOCATE_PAGE";
   break;
  case 131:
   id = "SPLIT_PAGE";
   break;
  case 132:
   id = "SPLIT_COMPLETE";
   break;
  case 135:
   id = "MOVE_PAGE_CONTENTS";
   break;
  case 130:
   id = "SQUEEZE_PAGE";
   break;
  case 139:
   id = "DELETE";
   break;
  case 133:
   id = "SPLIT_CLEANUP";
   break;
  case 129:
   id = "UPDATE_META_PAGE";
   break;
  case 128:
   id = "VACUUM_ONE_PAGE";
 }

 return id;
}
