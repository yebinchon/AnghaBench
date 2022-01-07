
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* delim; char* quote; char* escape; char* null_print; int file_encoding; scalar_t__ encoding_embeds_ascii; scalar_t__ need_transcoding; } ;
typedef TYPE_1__* CopyState ;


 int CopySendChar (TYPE_1__*,char) ;
 int CopySendString (TYPE_1__*,char*) ;
 int DUMPSOFAR () ;
 scalar_t__ IS_HIGHBIT_SET (char) ;
 int pg_encoding_mblen (int ,char*) ;
 char* pg_server_to_any (char*,int ,int ) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void
CopyAttributeOutCSV(CopyState cstate, char *string,
     bool use_quote, bool single_attr)
{
 char *ptr;
 char *start;
 char c;
 char delimc = cstate->delim[0];
 char quotec = cstate->quote[0];
 char escapec = cstate->escape[0];


 if (!use_quote && strcmp(string, cstate->null_print) == 0)
  use_quote = 1;

 if (cstate->need_transcoding)
  ptr = pg_server_to_any(string, strlen(string), cstate->file_encoding);
 else
  ptr = string;




 if (!use_quote)
 {




  if (single_attr && strcmp(ptr, "\\.") == 0)
   use_quote = 1;
  else
  {
   char *tptr = ptr;

   while ((c = *tptr) != '\0')
   {
    if (c == delimc || c == quotec || c == '\n' || c == '\r')
    {
     use_quote = 1;
     break;
    }
    if (IS_HIGHBIT_SET(c) && cstate->encoding_embeds_ascii)
     tptr += pg_encoding_mblen(cstate->file_encoding, tptr);
    else
     tptr++;
   }
  }
 }

 if (use_quote)
 {
  CopySendChar(cstate, quotec);




  start = ptr;
  while ((c = *ptr) != '\0')
  {
   if (c == quotec || c == escapec)
   {
    DUMPSOFAR();
    CopySendChar(cstate, escapec);
    start = ptr;
   }
   if (IS_HIGHBIT_SET(c) && cstate->encoding_embeds_ascii)
    ptr += pg_encoding_mblen(cstate->file_encoding, ptr);
   else
    ptr++;
  }
  DUMPSOFAR();

  CopySendChar(cstate, quotec);
 }
 else
 {

  CopySendString(cstate, ptr);
 }
}
