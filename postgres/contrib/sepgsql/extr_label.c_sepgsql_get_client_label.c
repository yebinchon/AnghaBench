
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* label; } ;
typedef TYPE_1__ pending_label ;


 int Assert (int ) ;
 char* client_label_committed ;
 char* client_label_func ;
 char* client_label_peer ;
 scalar_t__ client_label_pending ;
 TYPE_1__* llast (scalar_t__) ;

char *
sepgsql_get_client_label(void)
{

 if (client_label_func)
  return client_label_func;


 if (client_label_pending)
 {
  pending_label *plabel = llast(client_label_pending);

  if (plabel->label)
   return plabel->label;
 }
 else if (client_label_committed)
  return client_label_committed;


 Assert(client_label_peer != ((void*)0));
 return client_label_peer;
}
