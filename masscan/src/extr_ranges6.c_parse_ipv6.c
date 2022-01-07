
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef unsigned long long uint64_t ;
struct TYPE_3__ {unsigned long long hi; unsigned long long lo; } ;
typedef TYPE_1__ ipv6address ;


 unsigned int hexval (char const) ;
 scalar_t__ isdigit (char const) ;
 scalar_t__ isspace (char const) ;
 int isxdigit (char const) ;
 int memmove (unsigned char*,unsigned char*,unsigned int) ;
 int memset (unsigned char*,int ,int) ;
 unsigned char prefix_length ;

__attribute__((used)) static int
parse_ipv6(const char *buf, unsigned *offset, size_t length, ipv6address *ip)
{
 unsigned i = *offset;
 unsigned is_bracket_seen = 0;
 unsigned elision_offset = (unsigned)~0;
 unsigned d = 0;

    unsigned char address[16];





 while (i < length && isspace(buf[i]))
  i++;


 if (i < length && buf[i] == '[') {
  is_bracket_seen = 1;
  i++;


  while (i < length && isspace(buf[i]))
   i++;
 }


 while (i < length) {
  unsigned j;
  unsigned number = 0;


  if (d >= 16)
   break;


  if (buf[i] == ':' && elision_offset < 16) {
   elision_offset = d;
   i++;
   continue;
  }


  j=0;
  while (i < length) {
   if (j >= 4)
    break;
   if (buf[i] == ':')
    break;
   if (!isxdigit(buf[i])) {
    break;
   }

   number <<= 4;
   number |= hexval(buf[i++]);
   j++;
  }


  if (j == 0)
   break;


  address[d+0] = (unsigned char)(number>>8);
  address[d+1] = (unsigned char)(number>>0);
  d += 2;


  if (i < length && buf[i] == ':') {
   i++;
   continue;
  }


  if (i < length && is_bracket_seen && buf[i] == ']') {
   i++;

   break;
  }



  if (d == 16)
   break;


  if (elision_offset != (unsigned)(~0))
   break;


  if (i == length)
   break;



  return -1;
 }


 if (elision_offset != ~0) {
  if (d == 16) {

   return -1;
  }

  memmove(address + elision_offset + 16 - d,
    address + elision_offset,
    d - elision_offset);
  memset( address + elision_offset,
    0,
    16-d);
 }
    ip->hi = (((uint64_t)address[0]) << 56ULL)
                    | ((uint64_t)address[1] << 48ULL)
                    | ((uint64_t)address[2] << 40ULL)
                    | ((uint64_t)address[3] << 32ULL)
                    | ((uint64_t)address[4] << 24ULL)
                    | ((uint64_t)address[5] << 16ULL)
                    | ((uint64_t)address[6] << 8ULL)
                    | ((uint64_t)address[7] << 0ULL);
    ip->lo = ((uint64_t)address[ 8] << 56ULL)
                    | ((uint64_t)address[ 9] << 48ULL)
                    | ((uint64_t)address[10] << 40ULL)
                    | ((uint64_t)address[11] << 32ULL)
                    | ((uint64_t)address[12] << 24ULL)
                    | ((uint64_t)address[13] << 16ULL)
                    | ((uint64_t)address[14] << 8ULL)
                    | ((uint64_t)address[15] << 0ULL);

    *offset = i;


    {


    }
    return 1;
}
