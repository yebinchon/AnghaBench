
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;







 int XLOG_XACT_OPMASK ;


const char *
xact_identify(uint8 info)
{
 const char *id = ((void*)0);

 switch (info & XLOG_XACT_OPMASK)
 {
  case 130:
   id = "COMMIT";
   break;
  case 128:
   id = "PREPARE";
   break;
  case 133:
   id = "ABORT";
   break;
  case 129:
   id = "COMMIT_PREPARED";
   break;
  case 132:
   id = "ABORT_PREPARED";
   break;
  case 131:
   id = "ASSIGNMENT";
   break;
 }

 return id;
}
