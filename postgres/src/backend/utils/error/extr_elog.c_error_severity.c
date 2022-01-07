
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* gettext_noop (char*) ;

__attribute__((used)) static const char *
error_severity(int elevel)
{
 const char *prefix;

 switch (elevel)
 {
  case 140:
  case 139:
  case 138:
  case 137:
  case 136:
   prefix = gettext_noop("DEBUG");
   break;
  case 132:
  case 131:
   prefix = gettext_noop("LOG");
   break;
  case 133:
   prefix = gettext_noop("INFO");
   break;
  case 130:
   prefix = gettext_noop("NOTICE");
   break;
  case 128:
   prefix = gettext_noop("WARNING");
   break;
  case 135:
   prefix = gettext_noop("ERROR");
   break;
  case 134:
   prefix = gettext_noop("FATAL");
   break;
  case 129:
   prefix = gettext_noop("PANIC");
   break;
  default:
   prefix = "???";
   break;
 }

 return prefix;
}
