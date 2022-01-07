
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* delim; int file_encoding; scalar_t__ encoding_embeds_ascii; scalar_t__ need_transcoding; } ;
typedef TYPE_1__* CopyState ;


 int CopySendChar (TYPE_1__*,char) ;
 int DUMPSOFAR () ;
 scalar_t__ IS_HIGHBIT_SET (char) ;
 int pg_encoding_mblen (int ,char*) ;
 char* pg_server_to_any (char*,int ,int ) ;
 int strlen (char*) ;

__attribute__((used)) static void
CopyAttributeOutText(CopyState cstate, char *string)
{
 char *ptr;
 char *start;
 char c;
 char delimc = cstate->delim[0];

 if (cstate->need_transcoding)
  ptr = pg_server_to_any(string, strlen(string), cstate->file_encoding);
 else
  ptr = string;
 if (cstate->encoding_embeds_ascii)
 {
  start = ptr;
  while ((c = *ptr) != '\0')
  {
   if ((unsigned char) c < (unsigned char) 0x20)
   {







    switch (c)
    {
     case '\b':
      c = 'b';
      break;
     case '\f':
      c = 'f';
      break;
     case '\n':
      c = 'n';
      break;
     case '\r':
      c = 'r';
      break;
     case '\t':
      c = 't';
      break;
     case '\v':
      c = 'v';
      break;
     default:

      if (c == delimc)
       break;

      ptr++;
      continue;
    }

    DUMPSOFAR();
    CopySendChar(cstate, '\\');
    CopySendChar(cstate, c);
    start = ++ptr;
   }
   else if (c == '\\' || c == delimc)
   {
    DUMPSOFAR();
    CopySendChar(cstate, '\\');
    start = ptr++;
   }
   else if (IS_HIGHBIT_SET(c))
    ptr += pg_encoding_mblen(cstate->file_encoding, ptr);
   else
    ptr++;
  }
 }
 else
 {
  start = ptr;
  while ((c = *ptr) != '\0')
  {
   if ((unsigned char) c < (unsigned char) 0x20)
   {







    switch (c)
    {
     case '\b':
      c = 'b';
      break;
     case '\f':
      c = 'f';
      break;
     case '\n':
      c = 'n';
      break;
     case '\r':
      c = 'r';
      break;
     case '\t':
      c = 't';
      break;
     case '\v':
      c = 'v';
      break;
     default:

      if (c == delimc)
       break;

      ptr++;
      continue;
    }

    DUMPSOFAR();
    CopySendChar(cstate, '\\');
    CopySendChar(cstate, c);
    start = ++ptr;
   }
   else if (c == '\\' || c == delimc)
   {
    DUMPSOFAR();
    CopySendChar(cstate, '\\');
    start = ptr++;
   }
   else
    ptr++;
  }
 }

 DUMPSOFAR();
}
