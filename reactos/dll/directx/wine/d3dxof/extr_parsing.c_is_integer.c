
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tmp ;
struct TYPE_3__ {int rem_bytes; char* buffer; scalar_t__ value; } ;
typedef TYPE_1__ parse_buffer ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int TRACE (char*,char*,int) ;
 int TRUE ;
 int is_separator (char) ;
 size_t min (int,int) ;
 int sscanf (char*,char*,int*) ;

__attribute__((used)) static BOOL is_integer(parse_buffer* buf)
{
  char tmp[512];
  DWORD pos = 0;
  char c;
  DWORD integer;

  while (pos < buf->rem_bytes && !is_separator(c = *(buf->buffer+pos)))
  {
    if (!((c >= '0') && (c <= '9')))
      return FALSE;
    if (pos < sizeof(tmp))
        tmp[pos] = c;
    pos++;
  }
  tmp[min(pos, sizeof(tmp) - 1)] = 0;

  buf->buffer += pos;
  buf->rem_bytes -= pos;

  sscanf(tmp, "%d", &integer);

  TRACE("Found integer %s - %d\n", tmp, integer);

  *(DWORD*)buf->value = integer;

  return TRUE;
}
