
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8 ;
typedef scalar_t__ uint32 ;
struct TYPE_2__ {int* hist; int roff; } ;
typedef scalar_t__ RD_BOOL ;


 scalar_t__ False ;
 int RDP_MPPC_BIG ;
 int RDP_MPPC_COMPRESSED ;
 int RDP_MPPC_DICT_SIZE ;
 int RDP_MPPC_FLUSH ;
 int RDP_MPPC_RESET ;
 scalar_t__ True ;
 TYPE_1__ g_mppc_dict ;
 int memset (int*,int ,int) ;

int
mppc_expand(uint8 * data, uint32 clen, uint8 ctype, uint32 * roff, uint32 * rlen)
{
 int k, walker_len = 0, walker;
 uint32 i = 0;
 int next_offset, match_off;
 int match_len;
 int old_offset, match_bits;
 RD_BOOL big = ctype & RDP_MPPC_BIG ? True : False;

 uint8 *dict = g_mppc_dict.hist;

 if ((ctype & RDP_MPPC_COMPRESSED) == 0)
 {
  *roff = 0;
  *rlen = clen;
  return 0;
 }

 if ((ctype & RDP_MPPC_RESET) != 0)
 {
  g_mppc_dict.roff = 0;
 }

 if ((ctype & RDP_MPPC_FLUSH) != 0)
 {
  memset(dict, 0, RDP_MPPC_DICT_SIZE);
  g_mppc_dict.roff = 0;
 }

 *roff = 0;
 *rlen = 0;

 walker = g_mppc_dict.roff;

 next_offset = walker;
 old_offset = next_offset;
 *roff = old_offset;
 if (clen == 0)
  return 0;
 clen += i;

 do
 {
  if (walker_len == 0)
  {
   if (i >= clen)
    break;
   walker = data[i++] << 24;
   walker_len = 8;
  }
  if (walker >= 0)
  {
   if (walker_len < 8)
   {
    if (i >= clen)
    {
     if (walker != 0)
      return -1;
     break;
    }
    walker |= (data[i++] & 0xff) << (24 - walker_len);
    walker_len += 8;
   }
   if (next_offset >= RDP_MPPC_DICT_SIZE)
    return -1;
   dict[next_offset++] = (((uint32) walker) >> ((uint32) 24));
   walker <<= 8;
   walker_len -= 8;
   continue;
  }
  walker <<= 1;

  if (--walker_len == 0)
  {
   if (i >= clen)
    return -1;
   walker = data[i++] << 24;
   walker_len = 8;
  }

  if (walker >= 0)
  {
   if (walker_len < 8)
   {
    if (i >= clen)
     return -1;
    walker |= (data[i++] & 0xff) << (24 - walker_len);
    walker_len += 8;
   }
   if (next_offset >= RDP_MPPC_DICT_SIZE)
    return -1;
   dict[next_offset++] = (uint8) (walker >> 24 | 0x80);
   walker <<= 8;
   walker_len -= 8;
   continue;
  }



  walker <<= 1;
  if (--walker_len < (big ? 3 : 2))
  {
   if (i >= clen)
    return -1;
   walker |= (data[i++] & 0xff) << (24 - walker_len);
   walker_len += 8;
  }

  if (big)
  {






   switch (((uint32) walker) >> ((uint32) 29))
   {
    case 7:
     for (; walker_len < 9; walker_len += 8)
     {
      if (i >= clen)
       return -1;
      walker |= (data[i++] & 0xff) << (24 - walker_len);
     }
     walker <<= 3;
     match_off = ((uint32) walker) >> ((uint32) 26);
     walker <<= 6;
     walker_len -= 9;
     break;

    case 6:
     for (; walker_len < 11; walker_len += 8)
     {
      if (i >= clen)
       return -1;
      walker |= (data[i++] & 0xff) << (24 - walker_len);
     }

     walker <<= 3;
     match_off = (((uint32) walker) >> ((uint32) 24)) + 64;
     walker <<= 8;
     walker_len -= 11;
     break;

    case 5:
    case 4:
     for (; walker_len < 13; walker_len += 8)
     {
      if (i >= clen)
       return -1;
      walker |= (data[i++] & 0xff) << (24 - walker_len);
     }

     walker <<= 2;
     match_off = (((uint32) walker) >> ((uint32) 21)) + 320;
     walker <<= 11;
     walker_len -= 13;
     break;

    default:
     for (; walker_len < 17; walker_len += 8)
     {
      if (i >= clen)
       return -1;
      walker |= (data[i++] & 0xff) << (24 - walker_len);
     }

     walker <<= 1;
     match_off = (((uint32) walker) >> ((uint32) 16)) + 2368;
     walker <<= 16;
     walker_len -= 17;
     break;
   }
  }
  else
  {





   switch (((uint32) walker) >> ((uint32) 30))
   {
    case 3:
     if (walker_len < 8)
     {
      if (i >= clen)
       return -1;
      walker |= (data[i++] & 0xff) << (24 - walker_len);
      walker_len += 8;
     }
     walker <<= 2;
     match_off = ((uint32) walker) >> ((uint32) 26);
     walker <<= 6;
     walker_len -= 8;
     break;

    case 2:
     for (; walker_len < 10; walker_len += 8)
     {
      if (i >= clen)
       return -1;
      walker |= (data[i++] & 0xff) << (24 - walker_len);
     }

     walker <<= 2;
     match_off = (((uint32) walker) >> ((uint32) 24)) + 64;
     walker <<= 8;
     walker_len -= 10;
     break;

    default:
     for (; walker_len < 14; walker_len += 8)
     {
      if (i >= clen)
       return -1;
      walker |= (data[i++] & 0xff) << (24 - walker_len);
     }

     match_off = (walker >> 18) + 320;
     walker <<= 14;
     walker_len -= 14;
     break;
   }
  }
  if (walker_len == 0)
  {
   if (i >= clen)
    return -1;
   walker = data[i++] << 24;
   walker_len = 8;
  }


  match_len = 0;
  if (walker >= 0)
  {
   match_len = 3;
   walker <<= 1;
   walker_len--;
  }
  else
  {
   match_bits = big ? 14 : 11;
   do
   {
    walker <<= 1;
    if (--walker_len == 0)
    {
     if (i >= clen)
      return -1;
     walker = data[i++] << 24;
     walker_len = 8;
    }
    if (walker >= 0)
     break;
    if (--match_bits == 0)
    {
     return -1;
    }
   }
   while (1);
   match_len = (big ? 16 : 13) - match_bits;
   walker <<= 1;
   if (--walker_len < match_len)
   {
    for (; walker_len < match_len; walker_len += 8)
    {
     if (i >= clen)
     {
      return -1;
     }
     walker |= (data[i++] & 0xff) << (24 - walker_len);
    }
   }

   match_bits = match_len;
   match_len =
    ((walker >> (32 - match_bits)) & (~(-1 << match_bits))) | (1 <<
              match_bits);
   walker <<= match_bits;
   walker_len -= match_bits;
  }
  if (next_offset + match_len >= RDP_MPPC_DICT_SIZE)
  {
   return -1;
  }

  k = (next_offset - match_off) & (big ? 65535 : 8191);
  do
  {
   dict[next_offset++] = dict[k++];
  }
  while (--match_len != 0);
 }
 while (1);


 g_mppc_dict.roff = next_offset;

 *roff = old_offset;
 *rlen = next_offset - old_offset;

 return 0;
}
