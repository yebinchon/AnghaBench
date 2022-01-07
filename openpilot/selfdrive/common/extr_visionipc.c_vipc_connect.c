
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VIPC_SOCKET_PATH ;
 int ipc_connect (int ) ;

int vipc_connect() {
  return ipc_connect(VIPC_SOCKET_PATH);
}
