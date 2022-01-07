
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_4__ {scalar_t__ block_size; int pos; int const* buf; } ;
typedef TYPE_1__ PushFilter ;


 int memcpy (int const*,int const*,int) ;
 int wrap_process (TYPE_1__*,int const*,int) ;

int
pushf_write(PushFilter *mp, const uint8 *data, int len)
{
 int need,
    res;




 if (mp->block_size <= 0)
  return wrap_process(mp, data, len);




 need = mp->block_size - mp->pos;
 if (need > 0)
 {
  if (len < need)
  {
   memcpy(mp->buf + mp->pos, data, len);
   mp->pos += len;
   return 0;
  }
  memcpy(mp->buf + mp->pos, data, need);
  len -= need;
  data += need;
 }




 res = wrap_process(mp, mp->buf, mp->block_size);
 if (res < 0)
  return res;
 mp->pos = 0;




 while (len > 0)
 {
  if (len > mp->block_size)
  {
   res = wrap_process(mp, data, mp->block_size);
   if (res < 0)
    return res;
   data += mp->block_size;
   len -= mp->block_size;
  }
  else
  {
   memcpy(mp->buf, data, len);
   mp->pos += len;
   break;
  }
 }
 return 0;
}
