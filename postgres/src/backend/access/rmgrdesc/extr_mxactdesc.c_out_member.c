
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; int xid; } ;
typedef int StringInfo ;
typedef TYPE_1__ MultiXactMember ;
 int appendStringInfo (int ,char*,int ) ;
 int appendStringInfoString (int ,char*) ;

__attribute__((used)) static void
out_member(StringInfo buf, MultiXactMember *member)
{
 appendStringInfo(buf, "%u ", member->xid);
 switch (member->status)
 {
  case 133:
   appendStringInfoString(buf, "(keysh) ");
   break;
  case 131:
   appendStringInfoString(buf, "(sh) ");
   break;
  case 132:
   appendStringInfoString(buf, "(fornokeyupd) ");
   break;
  case 130:
   appendStringInfoString(buf, "(forupd) ");
   break;
  case 129:
   appendStringInfoString(buf, "(nokeyupd) ");
   break;
  case 128:
   appendStringInfoString(buf, "(upd) ");
   break;
  default:
   appendStringInfoString(buf, "(unk) ");
   break;
 }
}
