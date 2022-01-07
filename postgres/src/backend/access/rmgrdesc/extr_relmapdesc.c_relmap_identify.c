
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;



 int XLR_INFO_MASK ;

const char *
relmap_identify(uint8 info)
{
 const char *id = ((void*)0);

 switch (info & ~XLR_INFO_MASK)
 {
  case 128:
   id = "UPDATE";
   break;
 }

 return id;
}
