
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt305x_esw {int dummy; } ;


 unsigned int RT305X_ESW_PVIDC_PVID_M ;
 unsigned int RT305X_ESW_PVIDC_PVID_S ;
 int RT305X_ESW_REG_PVIDC (unsigned int) ;
 int esw_rmw (struct rt305x_esw*,int ,unsigned int,unsigned int) ;

__attribute__((used)) static void esw_set_pvid(struct rt305x_esw *esw, unsigned port, unsigned pvid)
{
 unsigned s;

 s = RT305X_ESW_PVIDC_PVID_S * (port % 2);
 esw_rmw(esw,
         RT305X_ESW_REG_PVIDC(port / 2),
         RT305X_ESW_PVIDC_PVID_M << s,
         (pvid & RT305X_ESW_PVIDC_PVID_M) << s);
}
