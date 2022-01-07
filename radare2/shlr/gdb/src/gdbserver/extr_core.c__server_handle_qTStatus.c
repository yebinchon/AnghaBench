
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libgdbr_t ;


 int send_ack (int *) ;
 int send_msg (int *,char const*) ;

__attribute__((used)) static int _server_handle_qTStatus(libgdbr_t *g) {
 int ret;

 const char *message = "";
 if ((ret = send_ack (g)) < 0) {
  return -1;
 }
 return send_msg (g, message);
}
