
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;







 int XLR_INFO_MASK ;

const char *
gist_identify(uint8 info)
{
 const char *id = ((void*)0);

 switch (info & ~XLR_INFO_MASK)
 {
  case 128:
   id = "PAGE_UPDATE";
   break;
  case 132:
   id = "DELETE";
   break;
  case 130:
   id = "PAGE_REUSE";
   break;
  case 129:
   id = "PAGE_SPLIT";
   break;
  case 131:
   id = "PAGE_DELETE";
   break;
 }

 return id;
}
