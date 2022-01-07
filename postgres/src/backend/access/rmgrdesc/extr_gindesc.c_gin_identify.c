
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
 int XLR_INFO_MASK ;

const char *
gin_identify(uint8 info)
{
 const char *id = ((void*)0);

 switch (info & ~XLR_INFO_MASK)
 {
  case 136:
   id = "CREATE_PTREE";
   break;
  case 133:
   id = "INSERT";
   break;
  case 131:
   id = "SPLIT";
   break;
  case 128:
   id = "VACUUM_PAGE";
   break;
  case 129:
   id = "VACUUM_DATA_LEAF_PAGE";
   break;
  case 134:
   id = "DELETE_PAGE";
   break;
  case 130:
   id = "UPDATE_META_PAGE";
   break;
  case 132:
   id = "INSERT_LISTPAGE";
   break;
  case 135:
   id = "DELETE_LISTPAGE";
   break;
 }

 return id;
}
