
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Portal ;


 int ERRCODE_INVALID_CURSOR_NAME ;
 int ERRCODE_UNDEFINED_CURSOR ;
 int ERROR ;
 int GetPortalByName (char const*) ;
 int PortalDrop (int ,int) ;
 int PortalHashTableDeleteAll () ;
 int PortalIsValid (int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;

void
PerformPortalClose(const char *name)
{
 Portal portal;


 if (name == ((void*)0))
 {
  PortalHashTableDeleteAll();
  return;
 }





 if (name[0] == '\0')
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_CURSOR_NAME),
     errmsg("invalid cursor name: must not be empty")));




 portal = GetPortalByName(name);
 if (!PortalIsValid(portal))
 {
  ereport(ERROR,
    (errcode(ERRCODE_UNDEFINED_CURSOR),
     errmsg("cursor \"%s\" does not exist", name)));
  return;
 }




 PortalDrop(portal, 0);
}
