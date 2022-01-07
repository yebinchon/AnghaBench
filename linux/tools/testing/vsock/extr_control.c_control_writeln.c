
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 scalar_t__ EINTR ;
 int EXIT_FAILURE ;
 int MSG_MORE ;
 int TIMEOUT ;
 int control_fd ;
 scalar_t__ errno ;
 int exit (int ) ;
 int perror (char*) ;
 int send (int ,char const*,int,int ) ;
 int strlen (char const*) ;
 int timeout_begin (int ) ;
 int timeout_check (char*) ;
 int timeout_end () ;

void control_writeln(const char *str)
{
 ssize_t len = strlen(str);
 ssize_t ret;

 timeout_begin(TIMEOUT);

 do {
  ret = send(control_fd, str, len, MSG_MORE);
  timeout_check("send");
 } while (ret < 0 && errno == EINTR);

 if (ret != len) {
  perror("send");
  exit(EXIT_FAILURE);
 }

 do {
  ret = send(control_fd, "\n", 1, 0);
  timeout_check("send");
 } while (ret < 0 && errno == EINTR);

 if (ret != 1) {
  perror("send");
  exit(EXIT_FAILURE);
 }

 timeout_end();
}
