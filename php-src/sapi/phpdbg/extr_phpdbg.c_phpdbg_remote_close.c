
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fclose (int *) ;
 int phpdbg_close_socket (int) ;

__attribute__((used)) static void phpdbg_remote_close(int socket, FILE *stream) {
 if (socket >= 0) {
  phpdbg_close_socket(socket);
 }

 if (stream) {
  fclose(stream);
 }
}
