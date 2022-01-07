
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_iface {int data; } ;
struct mg_ev_mgr_lwip_data {int dummy; } ;


 int LL_INFO ;
 int LOG (int ,char*) ;
 int LWIP_VERSION_MAJOR ;
 int LWIP_VERSION_MINOR ;
 int LWIP_VERSION_REVISION ;
 int MG_CALLOC (int,int) ;
 int MG_VERSION ;
 int s_tcpip_call_lock_sem ;
 int s_tcpip_call_sync_sem ;
 int sys_sem_new (int *,int) ;

void mg_lwip_if_init(struct mg_iface *iface) {
  LOG(LL_INFO, ("Mongoose %s, LwIP %u.%u.%u", MG_VERSION, LWIP_VERSION_MAJOR,
                LWIP_VERSION_MINOR, LWIP_VERSION_REVISION));
  iface->data = MG_CALLOC(1, sizeof(struct mg_ev_mgr_lwip_data));

  sys_sem_new(&s_tcpip_call_lock_sem, 1);
  sys_sem_new(&s_tcpip_call_sync_sem, 0);

}
