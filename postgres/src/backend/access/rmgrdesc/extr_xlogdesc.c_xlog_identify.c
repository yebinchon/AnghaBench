
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
 int XLR_INFO_MASK ;

const char *
xlog_identify(uint8 info)
{
 const char *id = ((void*)0);

 switch (info & ~XLR_INFO_MASK)
 {
  case 137:
   id = "CHECKPOINT_SHUTDOWN";
   break;
  case 138:
   id = "CHECKPOINT_ONLINE";
   break;
  case 131:
   id = "NOOP";
   break;
  case 132:
   id = "NEXTOID";
   break;
  case 128:
   id = "SWITCH";
   break;
  case 139:
   id = "BACKUP_END";
   break;
  case 130:
   id = "PARAMETER_CHANGE";
   break;
  case 129:
   id = "RESTORE_POINT";
   break;
  case 133:
   id = "FPW_CHANGE";
   break;
  case 136:
   id = "END_OF_RECOVERY";
   break;
  case 135:
   id = "FPI";
   break;
  case 134:
   id = "FPI_FOR_HINT";
   break;
 }

 return id;
}
