
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
struct TYPE_5__ {int numatts; char const** attnames; TYPE_1__ dobj; } ;
typedef TYPE_2__ TableInfo ;
 int fatal (char*,int,int ) ;

__attribute__((used)) static const char *
getAttrName(int attrnum, TableInfo *tblInfo)
{
 if (attrnum > 0 && attrnum <= tblInfo->numatts)
  return tblInfo->attnames[attrnum - 1];
 switch (attrnum)
 {
  case 129:
   return "ctid";
  case 130:
   return "xmin";
  case 131:
   return "cmin";
  case 132:
   return "xmax";
  case 133:
   return "cmax";
  case 128:
   return "tableoid";
 }
 fatal("invalid column number %d for table \"%s\"",
    attrnum, tblInfo->dobj.name);
 return ((void*)0);
}
