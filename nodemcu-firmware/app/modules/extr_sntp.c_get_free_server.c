
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ip_addr_t ;


 int free (int *) ;
 scalar_t__ malloc (int) ;
 int memcpy (int *,int *,int) ;
 int server_count ;
 int * serverp ;

__attribute__((used)) static ip_addr_t* get_free_server() {
  ip_addr_t* temp = (ip_addr_t *) malloc((server_count + 1) * sizeof(ip_addr_t));

  if (server_count > 0) {
    memcpy(temp, serverp, server_count * sizeof(ip_addr_t));
  }
  if (serverp) {
    free(serverp);
  }
  serverp = temp;

  return serverp + server_count;
}
