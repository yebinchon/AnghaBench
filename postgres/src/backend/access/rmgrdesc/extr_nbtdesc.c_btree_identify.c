
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
 int XLR_INFO_MASK ;

const char *
btree_identify(uint8 info)
{
 const char *id = ((void*)0);

 switch (info & ~XLR_INFO_MASK)
 {
  case 139:
   id = "INSERT_LEAF";
   break;
  case 137:
   id = "INSERT_UPPER";
   break;
  case 138:
   id = "INSERT_META";
   break;
  case 132:
   id = "SPLIT_L";
   break;
  case 131:
   id = "SPLIT_R";
   break;
  case 128:
   id = "VACUUM";
   break;
  case 140:
   id = "DELETE";
   break;
  case 136:
   id = "MARK_PAGE_HALFDEAD";
   break;
  case 130:
   id = "UNLINK_PAGE";
   break;
  case 129:
   id = "UNLINK_PAGE_META";
   break;
  case 134:
   id = "NEWROOT";
   break;
  case 133:
   id = "REUSE_PAGE";
   break;
  case 135:
   id = "META_CLEANUP";
   break;
 }

 return id;
}
