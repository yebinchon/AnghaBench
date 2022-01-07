
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int cur_pos_data; int capacity; TYPE_2__* pxo; void* pdata; } ;
typedef TYPE_3__ parse_buffer ;
typedef int ULONG ;
struct TYPE_6__ {TYPE_1__* root; } ;
struct TYPE_5__ {void* pdata; } ;
typedef void* LPBYTE ;
typedef int BOOL ;


 int FALSE ;
 int GetProcessHeap () ;
 void* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,void*) ;
 int TRUE ;
 int memcpy (void*,void*,int) ;

__attribute__((used)) static BOOL check_buffer(parse_buffer * buf, ULONG size)
{
  if ((buf->cur_pos_data + size) > buf->capacity)
  {
    LPBYTE pdata;
    ULONG new_capacity = buf->capacity ? 2 * buf->capacity : 100000;

    pdata = HeapAlloc(GetProcessHeap(), 0, new_capacity);
    if (!pdata)
      return FALSE;
    memcpy(pdata, buf->pdata, buf->cur_pos_data);
    HeapFree(GetProcessHeap(), 0, buf->pdata);
    buf->capacity = new_capacity;
    buf->pdata = pdata;
    buf->pxo->root->pdata = pdata;
  }
  return TRUE;
}
