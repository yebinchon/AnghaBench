
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int inet ;


 int Min (int,int) ;
 int bitncommon (int ,int ,int) ;
 scalar_t__ inet_masklen_inclusion_cmp (int *,int *,int) ;
 int ip_addr (int *) ;
 int ip_bits (int *) ;
 scalar_t__ ip_family (int *) ;

__attribute__((used)) static int
inet_hist_match_divider(inet *boundary, inet *query, int opr_codenum)
{
 if (ip_family(boundary) == ip_family(query) &&
  inet_masklen_inclusion_cmp(boundary, query, opr_codenum) == 0)
 {
  int min_bits,
     decisive_bits;

  min_bits = Min(ip_bits(boundary), ip_bits(query));





  if (opr_codenum < 0)
   decisive_bits = ip_bits(boundary);
  else if (opr_codenum > 0)
   decisive_bits = ip_bits(query);
  else
   decisive_bits = min_bits;





  if (min_bits > 0)
   return decisive_bits - bitncommon(ip_addr(boundary),
             ip_addr(query),
             min_bits);
  return decisive_bits;
 }

 return -1;
}
