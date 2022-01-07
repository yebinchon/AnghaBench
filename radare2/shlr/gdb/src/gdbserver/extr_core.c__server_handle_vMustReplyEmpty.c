
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libgdbr_t ;


 scalar_t__ send_ack (int *) ;
 int send_msg (int *,char*) ;

__attribute__((used)) static int _server_handle_vMustReplyEmpty(libgdbr_t *g) {
 if (send_ack (g) < 0) {
  return -1;
 }
 return send_msg (g, "");
}
