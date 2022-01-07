
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int DEBUG4 ;
 int ereport (int ,int ) ;
 int errmsg_internal (char*,...) ;

__attribute__((used)) static void
info_cb(const SSL *ssl, int type, int args)
{
 switch (type)
 {
  case 130:
   ereport(DEBUG4,
     (errmsg_internal("SSL: handshake start")));
   break;
  case 131:
   ereport(DEBUG4,
     (errmsg_internal("SSL: handshake done")));
   break;
  case 134:
   ereport(DEBUG4,
     (errmsg_internal("SSL: accept loop")));
   break;
  case 135:
   ereport(DEBUG4,
     (errmsg_internal("SSL: accept exit (%d)", args)));
   break;
  case 132:
   ereport(DEBUG4,
     (errmsg_internal("SSL: connect loop")));
   break;
  case 133:
   ereport(DEBUG4,
     (errmsg_internal("SSL: connect exit (%d)", args)));
   break;
  case 129:
   ereport(DEBUG4,
     (errmsg_internal("SSL: read alert (0x%04x)", args)));
   break;
  case 128:
   ereport(DEBUG4,
     (errmsg_internal("SSL: write alert (0x%04x)", args)));
   break;
 }
}
