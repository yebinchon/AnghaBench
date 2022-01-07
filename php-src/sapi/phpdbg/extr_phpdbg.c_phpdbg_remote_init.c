
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr_in {int sin_addr; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int buffer ;
typedef int address ;
typedef int FILE ;


 int AF_INET ;
 int FAILURE ;
 int SUCCESS ;
 int accept (int,struct sockaddr*,int*) ;
 int dup2 (int,int ) ;
 int * fdopen (int,char*) ;
 int fileno (int ) ;
 int inet_ntop (int ,int *,char*,int) ;
 int memset (struct sockaddr_storage*,int ,int) ;
 int phpdbg_remote_close (int,int *) ;
 int phpdbg_rlog (int ,char*,char const*,...) ;
 int phpdbg_set_async_io (int) ;
 int setbuf (int ,int *) ;
 int stderr ;
 int stdin ;
 int stdout ;

__attribute__((used)) static int phpdbg_remote_init(const char* address, unsigned short port, int server, int *socket, FILE **stream) {
 phpdbg_remote_close(*socket, *stream);

 if (server < 0) {
  phpdbg_rlog(fileno(stderr), "Initializing connection on %s:%u failed", address, port);

  return FAILURE;
 }

 phpdbg_rlog(fileno(stderr), "accepting connections on %s:%u", address, port);
 {
  struct sockaddr_storage address;
  socklen_t size = sizeof(address);
  char buffer[20] = {0};

  memset(&address, 0, size);
  *socket = accept(server, (struct sockaddr *) &address, &size);
  inet_ntop(AF_INET, &(((struct sockaddr_in *)&address)->sin_addr), buffer, sizeof(buffer));

  phpdbg_rlog(fileno(stderr), "connection established from %s", buffer);
 }


 dup2(*socket, fileno(stdout));
 dup2(*socket, fileno(stdin));

 setbuf(stdout, ((void*)0));

 *stream = fdopen(*socket, "r+");

 phpdbg_set_async_io(*socket);

 return SUCCESS;
}
