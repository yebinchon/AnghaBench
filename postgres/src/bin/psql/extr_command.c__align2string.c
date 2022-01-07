
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum printFormat { ____Placeholder_printFormat } printFormat ;
__attribute__((used)) static const char *
_align2string(enum printFormat in)
{
 switch (in)
 {
  case 131:
   return "nothing";
   break;
  case 137:
   return "aligned";
   break;
  case 136:
   return "asciidoc";
   break;
  case 135:
   return "csv";
   break;
  case 134:
   return "html";
   break;
  case 133:
   return "latex";
   break;
  case 132:
   return "latex-longtable";
   break;
  case 130:
   return "troff-ms";
   break;
  case 129:
   return "unaligned";
   break;
  case 128:
   return "wrapped";
   break;
 }
 return "unknown";
}
