
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rem_bytes; int buffer; } ;
typedef TYPE_1__ parse_buffer ;
typedef scalar_t__ DWORD ;



__attribute__((used)) static void rewind_bytes(parse_buffer * buf, DWORD size)
{
  buf->buffer -= size;
  buf->rem_bytes += size;
}
