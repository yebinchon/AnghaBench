
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rem_bytes; int buffer; } ;
typedef TYPE_1__ parse_buffer ;
typedef int LPVOID ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int memcpy (int ,int ,scalar_t__) ;

__attribute__((used)) static BOOL read_bytes(parse_buffer * buf, LPVOID data, DWORD size)
{
  if (buf->rem_bytes < size)
    return FALSE;
  memcpy(data, buf->buffer, size);
  buf->buffer += size;
  buf->rem_bytes -= size;
  return TRUE;
}
