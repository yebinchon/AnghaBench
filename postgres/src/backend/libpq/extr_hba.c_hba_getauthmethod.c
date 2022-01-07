
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hbaPort ;


 int check_hba (int *) ;

void
hba_getauthmethod(hbaPort *port)
{
 check_hba(port);
}
