
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BackendType ;
const char *
pgstat_get_backend_desc(BackendType backendType)
{
 const char *backendDesc = "unknown process type";

 switch (backendType)
 {
  case 137:
   backendDesc = "autovacuum launcher";
   break;
  case 136:
   backendDesc = "autovacuum worker";
   break;
  case 135:
   backendDesc = "client backend";
   break;
  case 134:
   backendDesc = "background worker";
   break;
  case 133:
   backendDesc = "background writer";
   break;
  case 132:
   backendDesc = "checkpointer";
   break;
  case 131:
   backendDesc = "startup";
   break;
  case 130:
   backendDesc = "walreceiver";
   break;
  case 129:
   backendDesc = "walsender";
   break;
  case 128:
   backendDesc = "walwriter";
   break;
 }

 return backendDesc;
}
