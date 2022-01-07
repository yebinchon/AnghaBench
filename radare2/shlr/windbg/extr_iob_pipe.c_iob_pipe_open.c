
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {scalar_t__* sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;


 int AF_UNIX ;
 int SOCK_STREAM ;
 int close (int) ;
 int connect (int,struct sockaddr*,int) ;
 int memset (struct sockaddr_un*,int ,int) ;
 int perror (char*) ;
 int socket (int ,int ,int ) ;
 int strncpy (scalar_t__*,char const*,int) ;

__attribute__((used)) static void *iob_pipe_open(const char *path) {
 int sock;
 struct sockaddr_un sa;

 sock = socket (AF_UNIX, SOCK_STREAM, 0);
 if (sock == -1) {
  perror ("socket");
  return 0;
 }

 memset (&sa, 0, sizeof (struct sockaddr_un));

 sa.sun_family = AF_UNIX;
 strncpy (sa.sun_path, path, sizeof(sa.sun_path));
 sa.sun_path[sizeof (sa.sun_path) - 1] = 0;
 if (connect (sock, (struct sockaddr *) &sa, sizeof(struct sockaddr_un)) == -1) {
  perror ("connect");
  close (sock);
  return 0;
 }




 return (void *) (size_t) sock;
}
