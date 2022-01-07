
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_3__* pmbedtls_msg ;
struct TYPE_11__ {TYPE_3__* pssl; struct TYPE_11__* pnext; } ;
typedef TYPE_4__ espconn_msg ;
struct TYPE_9__ {int fd; } ;
struct TYPE_8__ {int fd; } ;
struct TYPE_10__ {TYPE_2__ listen_fd; TYPE_1__ fd; } ;


 TYPE_4__* plink_active ;
 TYPE_4__* plink_server ;

__attribute__((used)) static espconn_msg* mbedtls_msg_find(int sock)
{
 espconn_msg *plist = ((void*)0);
 pmbedtls_msg msg = ((void*)0);

 for (plist = plink_active; plist != ((void*)0); plist = plist->pnext) {
  if(plist->pssl != ((void*)0)){
   msg = plist->pssl;
   if (msg->fd.fd == sock)
    return plist;
  }
 }

 for (plist = plink_server; plist != ((void*)0); plist = plist->pnext){
  if(plist->pssl != ((void*)0)){
   msg = plist->pssl;
   if (msg->listen_fd.fd == sock)
    return plist;
  }
 }
 return ((void*)0);
}
