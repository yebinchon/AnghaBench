
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef enum path_delim { ____Placeholder_path_delim } path_delim ;
struct TYPE_8__ {int y; int x; } ;
struct TYPE_7__ {char* data; } ;
typedef TYPE_1__ StringInfoData ;
typedef TYPE_2__ Point ;


 int DELIM ;
 int LDELIM ;
 int LDELIM_EP ;



 int RDELIM ;
 int RDELIM_EP ;
 int appendStringInfoChar (TYPE_1__*,int ) ;
 int initStringInfo (TYPE_1__*) ;
 int pair_encode (int ,int ,TYPE_1__*) ;

__attribute__((used)) static char *
path_encode(enum path_delim path_delim, int npts, Point *pt)
{
 StringInfoData str;
 int i;

 initStringInfo(&str);

 switch (path_delim)
 {
  case 130:
   appendStringInfoChar(&str, LDELIM);
   break;
  case 128:
   appendStringInfoChar(&str, LDELIM_EP);
   break;
  case 129:
   break;
 }

 for (i = 0; i < npts; i++)
 {
  if (i > 0)
   appendStringInfoChar(&str, DELIM);
  appendStringInfoChar(&str, LDELIM);
  pair_encode(pt->x, pt->y, &str);
  appendStringInfoChar(&str, RDELIM);
  pt++;
 }

 switch (path_delim)
 {
  case 130:
   appendStringInfoChar(&str, RDELIM);
   break;
  case 128:
   appendStringInfoChar(&str, RDELIM_EP);
   break;
  case 129:
   break;
 }

 return str.data;
}
