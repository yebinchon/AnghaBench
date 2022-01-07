
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ XMLRPC_SERVER ;


 scalar_t__ XMLRPC_ServerCreate () ;

XMLRPC_SERVER XMLRPC_GetGlobalServer() {
   static XMLRPC_SERVER xsServer = 0;
   if(!xsServer) {
      xsServer = XMLRPC_ServerCreate();
   }
   return xsServer;
}
