
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int key; } ;
typedef int GistInetKey ;
typedef TYPE_1__ GISTENTRY ;


 int Assert (int) ;
 int * DatumGetInetKeyP (int ) ;
 int bitncommon (unsigned char*,unsigned char*,int) ;
 unsigned char* gk_ip_addr (int *) ;
 int gk_ip_commonbits (int *) ;
 int gk_ip_family (int *) ;
 int gk_ip_minbits (int *) ;

__attribute__((used)) static void
calc_inet_union_params(GISTENTRY *ent,
        int m, int n,
        int *minfamily_p,
        int *maxfamily_p,
        int *minbits_p,
        int *commonbits_p)
{
 int minfamily,
    maxfamily,
    minbits,
    commonbits;
 unsigned char *addr;
 GistInetKey *tmp;
 int i;


 Assert(m <= n);


 tmp = DatumGetInetKeyP(ent[m].key);
 minfamily = maxfamily = gk_ip_family(tmp);
 minbits = gk_ip_minbits(tmp);
 commonbits = gk_ip_commonbits(tmp);
 addr = gk_ip_addr(tmp);


 for (i = m + 1; i <= n; i++)
 {
  tmp = DatumGetInetKeyP(ent[i].key);


  if (minfamily > gk_ip_family(tmp))
   minfamily = gk_ip_family(tmp);
  if (maxfamily < gk_ip_family(tmp))
   maxfamily = gk_ip_family(tmp);


  if (minbits > gk_ip_minbits(tmp))
   minbits = gk_ip_minbits(tmp);


  if (commonbits > gk_ip_commonbits(tmp))
   commonbits = gk_ip_commonbits(tmp);
  if (commonbits > 0)
   commonbits = bitncommon(addr, gk_ip_addr(tmp), commonbits);
 }


 if (minfamily != maxfamily)
  minbits = commonbits = 0;

 *minfamily_p = minfamily;
 *maxfamily_p = maxfamily;
 *minbits_p = minbits;
 *commonbits_p = commonbits;
}
