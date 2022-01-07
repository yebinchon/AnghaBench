
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32 ;
struct TYPE_4__ {int len; scalar_t__ data; struct TYPE_4__* next; } ;
struct TYPE_3__ {scalar_t__ bytes_free; int total_len; TYPE_2__* tail; int num_chunks; } ;
typedef int StateFileChunk ;


 scalar_t__ MAXALIGN (scalar_t__) ;
 scalar_t__ Max (scalar_t__,int) ;
 int memcpy (char*,void const*,scalar_t__) ;
 scalar_t__ palloc (scalar_t__) ;
 TYPE_2__* palloc0 (int) ;
 TYPE_1__ records ;

__attribute__((used)) static void
save_state_data(const void *data, uint32 len)
{
 uint32 padlen = MAXALIGN(len);

 if (padlen > records.bytes_free)
 {
  records.tail->next = palloc0(sizeof(StateFileChunk));
  records.tail = records.tail->next;
  records.tail->len = 0;
  records.tail->next = ((void*)0);
  records.num_chunks++;

  records.bytes_free = Max(padlen, 512);
  records.tail->data = palloc(records.bytes_free);
 }

 memcpy(((char *) records.tail->data) + records.tail->len, data, len);
 records.tail->len += padlen;
 records.bytes_free -= padlen;
 records.total_len += padlen;
}
