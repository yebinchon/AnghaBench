
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
 int XLR_INFO_MASK ;

const char *
spg_identify(uint8 info)
{
 const char *id = ((void*)0);

 switch (info & ~XLR_INFO_MASK)
 {
  case 135:
   id = "ADD_LEAF";
   break;
  case 133:
   id = "MOVE_LEAFS";
   break;
  case 134:
   id = "ADD_NODE";
   break;
  case 131:
   id = "SPLIT_TUPLE";
   break;
  case 132:
   id = "PICKSPLIT";
   break;
  case 130:
   id = "VACUUM_LEAF";
   break;
  case 128:
   id = "VACUUM_ROOT";
   break;
  case 129:
   id = "VACUUM_REDIRECT";
   break;
 }

 return id;
}
