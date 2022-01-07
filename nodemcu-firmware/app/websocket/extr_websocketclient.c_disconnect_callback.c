
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int connectionState; int knownFailureCode; int (* onFailure ) (TYPE_2__*,int) ;int * conn; struct espconn* payloadBuffer; struct espconn* frameBuffer; struct espconn* expectedSecKey; struct espconn* path; struct espconn* hostname; int timeoutTimer; } ;
typedef TYPE_2__ ws_info ;
struct TYPE_5__ {struct espconn* tcp; } ;
struct espconn {TYPE_1__ proto; scalar_t__ reverse; } ;


 int NODE_DBG (char*,...) ;
 int espconn_delete (struct espconn*) ;
 int os_free (struct espconn*) ;
 int os_timer_disarm (int *) ;
 int stub1 (TYPE_2__*,int) ;
 int stub2 (TYPE_2__*,int) ;

__attribute__((used)) static void disconnect_callback(void *arg) {
  NODE_DBG("disconnect_callback\n");
  struct espconn *conn = (struct espconn *) arg;
  ws_info *ws = (ws_info *) conn->reverse;

  ws->connectionState = 4;

  os_timer_disarm(&ws->timeoutTimer);

  NODE_DBG("ws->hostname %d\n", ws->hostname);
  os_free(ws->hostname);
  NODE_DBG("ws->path %d\n ", ws->path);
  os_free(ws->path);

  if (ws->expectedSecKey != ((void*)0)) {
    os_free(ws->expectedSecKey);
  }

  if (ws->frameBuffer != ((void*)0)) {
    os_free(ws->frameBuffer);
  }

  if (ws->payloadBuffer != ((void*)0)) {
    os_free(ws->payloadBuffer);
  }

  if (conn->proto.tcp != ((void*)0)) {
    os_free(conn->proto.tcp);
  }

  NODE_DBG("conn %d\n", conn);
  espconn_delete(conn);

  NODE_DBG("freeing conn1 \n");

  os_free(conn);
  ws->conn = ((void*)0);

  if (ws->onFailure) {
    if (ws->knownFailureCode) ws->onFailure(ws, ws->knownFailureCode);
    else ws->onFailure(ws, -99);
  }
}
