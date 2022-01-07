
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cab_ULONG ;
typedef int ULONG ;
typedef int UINT ;
typedef int BYTE ;



__attribute__((used)) static cab_ULONG fci_get_checksum( const void *pv, UINT cb, cab_ULONG seed )
{
  cab_ULONG csum;
  cab_ULONG ul;
  int cUlong;
  const BYTE *pb;

  csum = seed;
  cUlong = cb / 4;
  pb = pv;

  while (cUlong-- > 0) {
    ul = *pb++;
    ul |= (((cab_ULONG)(*pb++)) << 8);
    ul |= (((cab_ULONG)(*pb++)) << 16);
    ul |= (((cab_ULONG)(*pb++)) << 24);
    csum ^= ul;
  }

  ul = 0;
  switch (cb % 4) {
    case 3:
      ul |= (((ULONG)(*pb++)) << 16);

    case 2:
      ul |= (((ULONG)(*pb++)) << 8);

    case 1:
      ul |= *pb;

    default:
      break;
  }
  csum ^= ul;

  return csum;
}
