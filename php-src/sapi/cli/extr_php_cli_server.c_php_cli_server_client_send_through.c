
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {int member_0; int member_1; } ;
typedef scalar_t__ ssize_t ;
struct TYPE_3__ {int sock; } ;
typedef TYPE_1__ php_cli_server_client ;


 int POLLOUT ;
 int SOCK_EAGAIN ;
 int php_handle_aborted_connection () ;
 int php_pollfd_for (int ,int ,struct timeval*) ;
 int php_socket_errno () ;
 scalar_t__ send (int ,char const*,scalar_t__,int ) ;

__attribute__((used)) static size_t php_cli_server_client_send_through(php_cli_server_client *client, const char *str, size_t str_len)
{
 struct timeval tv = { 10, 0 };



 ssize_t nbytes_left = (ssize_t)str_len;

 do {



  ssize_t nbytes_sent;


  nbytes_sent = send(client->sock, str + str_len - nbytes_left, nbytes_left, 0);
  if (nbytes_sent < 0) {
   int err = php_socket_errno();
   if (err == SOCK_EAGAIN) {
    int nfds = php_pollfd_for(client->sock, POLLOUT, &tv);
    if (nfds > 0) {
     continue;
    } else if (nfds < 0) {

     php_handle_aborted_connection();
     return nbytes_left;
    } else {

     php_handle_aborted_connection();
     return nbytes_left;
    }
   } else {
    php_handle_aborted_connection();
    return nbytes_left;
   }
  }
  nbytes_left -= nbytes_sent;
 } while (nbytes_left > 0);

 return str_len;
}
