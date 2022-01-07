
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int a; int b; int c; int d; int e; int f; int g; int h; } ;
typedef TYPE_1__ macaddr8 ;
struct TYPE_6__ {int a; int b; int c; int d; int e; int f; } ;
typedef TYPE_2__ macaddr ;
typedef int inet ;
typedef int Oid ;
typedef int Datum ;



 int * DatumGetInetPP (int ) ;
 TYPE_1__* DatumGetMacaddr8P (int ) ;
 TYPE_2__* DatumGetMacaddrP (int ) ;



 double PGSQL_AF_INET ;
 double* ip_addr (int *) ;
 double ip_family (int *) ;

double
convert_network_to_scalar(Datum value, Oid typid, bool *failure)
{
 switch (typid)
 {
  case 130:
  case 131:
   {
    inet *ip = DatumGetInetPP(value);
    int len;
    double res;
    int i;




    if (ip_family(ip) == PGSQL_AF_INET)
     len = 4;
    else
     len = 5;

    res = ip_family(ip);
    for (i = 0; i < len; i++)
    {
     res *= 256;
     res += ip_addr(ip)[i];
    }
    return res;
   }
  case 128:
   {
    macaddr *mac = DatumGetMacaddrP(value);
    double res;

    res = (mac->a << 16) | (mac->b << 8) | (mac->c);
    res *= 256 * 256 * 256;
    res += (mac->d << 16) | (mac->e << 8) | (mac->f);
    return res;
   }
  case 129:
   {
    macaddr8 *mac = DatumGetMacaddr8P(value);
    double res;

    res = (mac->a << 24) | (mac->b << 16) | (mac->c << 8) | (mac->d);
    res *= ((double) 256) * 256 * 256 * 256;
    res += (mac->e << 24) | (mac->f << 16) | (mac->g << 8) | (mac->h);
    return res;
   }
 }

 *failure = 1;
 return 0;
}
