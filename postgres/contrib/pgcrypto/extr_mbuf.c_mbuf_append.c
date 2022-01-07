
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_4__ {int data_end; scalar_t__ no_write; } ;
typedef TYPE_1__ MBuf ;


 int PXE_BUG ;
 int memcpy (int,int const*,int) ;
 int prepare_room (TYPE_1__*,int) ;
 int px_debug (char*) ;

int
mbuf_append(MBuf *dst, const uint8 *buf, int len)
{
 if (dst->no_write)
 {
  px_debug("mbuf_append: no_write");
  return PXE_BUG;
 }

 prepare_room(dst, len);

 memcpy(dst->data_end, buf, len);
 dst->data_end += len;

 return 0;
}
