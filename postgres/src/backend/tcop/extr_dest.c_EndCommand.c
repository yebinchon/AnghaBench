
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CommandDest ;
 int pq_putmessage (char,char const*,int ) ;
 int strlen (char const*) ;

void
EndCommand(const char *commandTag, CommandDest dest)
{
 switch (dest)
 {
  case 135:
  case 134:
  case 133:





   pq_putmessage('C', commandTag, strlen(commandTag) + 1);
   break;

  case 136:
  case 138:
  case 132:
  case 128:
  case 137:
  case 139:
  case 131:
  case 130:
  case 129:
   break;
 }
}
