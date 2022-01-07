
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Portal ;


 int CreatePortal (char*,int,int) ;
 int * GetPortalByName (char*) ;
 int MAX_PORTALNAME_LEN ;
 int sprintf (char*,char*,unsigned int) ;

Portal
CreateNewPortal(void)
{
 static unsigned int unnamed_portal_count = 0;

 char portalname[MAX_PORTALNAME_LEN];


 for (;;)
 {
  unnamed_portal_count++;
  sprintf(portalname, "<unnamed portal %u>", unnamed_portal_count);
  if (GetPortalByName(portalname) == ((void*)0))
   break;
 }

 return CreatePortal(portalname, 0, 0);
}
