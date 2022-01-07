
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef scalar_t__ int16_t ;



int parse_name(uint8_t * msg, uint8_t * compressed, char * buf, int16_t len)
{
 uint16_t slen;
 uint8_t * cp;
 int clen = 0;
 int indirect = 0;
 int nseg = 0;

 cp = compressed;

 for (;;)
 {
  slen = *cp++;

  if (!indirect) clen++;

  if ((slen & 0xc0) == 0xc0)
  {
   if (!indirect)
    clen++;
   indirect = 1;

   cp = &msg[((slen & 0x3f)<<8) + *cp];
   slen = *cp++;
  }

  if (slen == 0)
   break;

  len -= slen + 1;

  if (len < 0) return -1;

  if (!indirect) clen += slen;

  while (slen-- != 0) *buf++ = (char)*cp++;
  *buf++ = '.';
  nseg++;
 }

 if (nseg == 0)
 {

  *buf++ = '.';
  len--;
 }

 *buf++ = '\0';
 len--;

 return clen;
}
