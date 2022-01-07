
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tmp ;
struct TYPE_3__ {char* buffer; int rem_bytes; scalar_t__ value; } ;
typedef TYPE_1__ parse_buffer ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int TRACE (char*,char*) ;
 int TRUE ;
 size_t min (int,int) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static BOOL is_string(parse_buffer* buf)
{
  char tmp[512];
  DWORD pos = 0;
  char c;
  BOOL ok = FALSE;

  if (*buf->buffer != '"')
    return FALSE;

  while ((pos+1) < buf->rem_bytes)
  {
    c = *(buf->buffer+pos+1);
    if (c == '"')
    {
      ok = TRUE;
      break;
    }
    if (pos < sizeof(tmp))
        tmp[pos] = c;
    pos++;
  }
  tmp[min(pos, sizeof(tmp) - 1)] = 0;

  if (!ok)
  {
    TRACE("Wrong string %s\n", tmp);
    return FALSE;
  }

  buf->buffer += pos + 2;
  buf->rem_bytes -= pos + 2;

  TRACE("Found string %s\n", tmp);
  strcpy((char*)buf->value, tmp);

  return TRUE;
}
