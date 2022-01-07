
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int inet ;
typedef int bytea ;
typedef int StringInfoData ;


 scalar_t__ ip_addr (int *) ;
 int ip_addrsize (int *) ;
 char ip_bits (int *) ;
 char ip_family (int *) ;
 int pq_begintypsend (int *) ;
 int * pq_endtypsend (int *) ;
 int pq_sendbyte (int *,char) ;

__attribute__((used)) static bytea *
network_send(inet *addr, bool is_cidr)
{
 StringInfoData buf;
 char *addrptr;
 int nb,
    i;

 pq_begintypsend(&buf);
 pq_sendbyte(&buf, ip_family(addr));
 pq_sendbyte(&buf, ip_bits(addr));
 pq_sendbyte(&buf, is_cidr);
 nb = ip_addrsize(addr);
 if (nb < 0)
  nb = 0;
 pq_sendbyte(&buf, nb);
 addrptr = (char *) ip_addr(addr);
 for (i = 0; i < nb; i++)
  pq_sendbyte(&buf, addrptr[i]);
 return pq_endtypsend(&buf);
}
