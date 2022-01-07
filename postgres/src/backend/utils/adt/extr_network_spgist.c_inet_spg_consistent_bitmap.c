
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int const inet ;
struct TYPE_3__ {int sk_strategy; int sk_argument; } ;
typedef int StrategyNumber ;
typedef TYPE_1__* ScanKey ;


 int const* DatumGetInetPP (int ) ;
 int Min (int,int) ;
 int bitncmp (int*,int*,int) ;
 int* ip_addr (int const*) ;
 int ip_bits (int const*) ;
 scalar_t__ ip_family (int const*) ;
 int ip_maxbits (int const*) ;

__attribute__((used)) static int
inet_spg_consistent_bitmap(const inet *prefix, int nkeys, ScanKey scankeys,
         bool leaf)
{
 int bitmap;
 int commonbits,
    i;


 if (leaf)
  bitmap = 1;
 else
  bitmap = 1 | (1 << 1) | (1 << 2) | (1 << 3);

 commonbits = ip_bits(prefix);

 for (i = 0; i < nkeys; i++)
 {
  inet *argument = DatumGetInetPP(scankeys[i].sk_argument);
  StrategyNumber strategy = scankeys[i].sk_strategy;
  int order;






  if (ip_family(argument) != ip_family(prefix))
  {
   switch (strategy)
   {
    case 133:
    case 134:
     if (ip_family(argument) < ip_family(prefix))
      bitmap = 0;
     break;

    case 136:
    case 135:
     if (ip_family(argument) > ip_family(prefix))
      bitmap = 0;
     break;

    case 132:
     break;

    default:

     bitmap = 0;
     break;
   }

   if (!bitmap)
    break;


   continue;
  }
  switch (strategy)
  {
   case 130:
    if (commonbits <= ip_bits(argument))
     bitmap &= (1 << 2) | (1 << 3);
    break;

   case 131:
    if (commonbits < ip_bits(argument))
     bitmap &= (1 << 2) | (1 << 3);
    break;

   case 128:
    if (commonbits == ip_bits(argument) - 1)
     bitmap &= 1 | (1 << 1);
    else if (commonbits >= ip_bits(argument))
     bitmap = 0;
    break;

   case 129:
    if (commonbits == ip_bits(argument))
     bitmap &= 1 | (1 << 1);
    else if (commonbits > ip_bits(argument))
     bitmap = 0;
    break;

   case 137:
    if (commonbits < ip_bits(argument))
     bitmap &= (1 << 2) | (1 << 3);
    else if (commonbits == ip_bits(argument))
     bitmap &= 1 | (1 << 1);
    else
     bitmap = 0;
    break;
  }

  if (!bitmap)
   break;
  order = bitncmp(ip_addr(prefix), ip_addr(argument),
      Min(commonbits, ip_bits(argument)));

  if (order != 0)
  {
   switch (strategy)
   {
    case 133:
    case 134:
     if (order > 0)
      bitmap = 0;
     break;

    case 136:
    case 135:
     if (order < 0)
      bitmap = 0;
     break;

    case 132:
     break;

    default:

     bitmap = 0;
     break;
   }

   if (!bitmap)
    break;




   continue;
  }
  if (bitmap & ((1 << 2) | (1 << 3)) &&
   commonbits < ip_bits(argument))
  {
   int nextbit;

   nextbit = ip_addr(argument)[commonbits / 8] &
    (1 << (7 - commonbits % 8));

   switch (strategy)
   {
    case 133:
    case 134:
     if (!nextbit)
      bitmap &= 1 | (1 << 1) | (1 << 2);
     break;

    case 136:
    case 135:
     if (nextbit)
      bitmap &= 1 | (1 << 1) | (1 << 3);
     break;

    case 132:
     break;

    default:
     if (!nextbit)
      bitmap &= 1 | (1 << 1) | (1 << 2);
     else
      bitmap &= 1 | (1 << 1) | (1 << 3);
     break;
   }

   if (!bitmap)
    break;
  }





  if (strategy < 137 ||
   strategy > 136)
   continue;
  switch (strategy)
  {
   case 133:
   case 134:
    if (commonbits == ip_bits(argument))
     bitmap &= 1 | (1 << 1);
    else if (commonbits > ip_bits(argument))
     bitmap = 0;
    break;

   case 136:
   case 135:
    if (commonbits < ip_bits(argument))
     bitmap &= (1 << 2) | (1 << 3);
    break;
  }

  if (!bitmap)
   break;


  if (commonbits != ip_bits(argument))
   continue;
  if (!leaf && bitmap & (1 | (1 << 1)) &&
   commonbits < ip_maxbits(argument))
  {
   int nextbit;

   nextbit = ip_addr(argument)[commonbits / 8] &
    (1 << (7 - commonbits % 8));

   switch (strategy)
   {
    case 133:
    case 134:
     if (!nextbit)
      bitmap &= 1 | (1 << 2) | (1 << 3);
     break;

    case 136:
    case 135:
     if (nextbit)
      bitmap &= (1 << 1) | (1 << 2) | (1 << 3);
     break;

    case 132:
     break;

    default:
     if (!nextbit)
      bitmap &= 1 | (1 << 2) | (1 << 3);
     else
      bitmap &= (1 << 1) | (1 << 2) | (1 << 3);
     break;
   }

   if (!bitmap)
    break;
  }







  if (leaf)
  {

   order = bitncmp(ip_addr(prefix), ip_addr(argument),
       ip_maxbits(prefix));

   switch (strategy)
   {
    case 133:
     if (order >= 0)
      bitmap = 0;
     break;

    case 134:
     if (order > 0)
      bitmap = 0;
     break;

    case 137:
     if (order != 0)
      bitmap = 0;
     break;

    case 136:
     if (order < 0)
      bitmap = 0;
     break;

    case 135:
     if (order <= 0)
      bitmap = 0;
     break;

    case 132:
     if (order == 0)
      bitmap = 0;
     break;
   }

   if (!bitmap)
    break;
  }
 }

 return bitmap;
}
