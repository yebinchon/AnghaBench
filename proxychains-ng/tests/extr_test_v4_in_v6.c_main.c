
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_addr; int sin6_port; int sin6_family; } ;
struct sockaddr_in {int sin_addr; } ;
struct sockaddr {int dummy; } ;
struct addrinfo {scalar_t__ ai_addr; int ai_family; } ;
typedef int a ;


 int AF_INET ;
 int AF_INET6 ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int IPPROTO_TCP ;
 int SOCK_STREAM ;
 int connect (int,struct sockaddr*,int) ;
 int fprintf (int ,char*,char*) ;
 int freeaddrinfo (struct addrinfo*) ;
 char* gai_strerror (int) ;
 int getaddrinfo (char*,int *,struct addrinfo const*,struct addrinfo**) ;
 int htons (int) ;
 int perror (char*) ;
 int socket (int ,int ,int ) ;
 int stderr ;
 int v4_to_v6 (int *,int *) ;

int main(void) {
 struct addrinfo *result;
 struct addrinfo *res;
 const struct addrinfo hints = { .ai_family = AF_INET };
 int error, sock;


 error = getaddrinfo("www.example.com", ((void*)0), &hints, &result);
 if (error != 0) {
  fprintf(stderr, "error in getaddrinfo: %s\n", gai_strerror(error));
  return EXIT_FAILURE;
 }
 if((sock=socket(AF_INET, SOCK_STREAM, IPPROTO_TCP)) == -1) {
  perror("socket");
  return EXIT_FAILURE;
 }
 struct sockaddr_in6 a = { .sin6_family = AF_INET6,
                           .sin6_port = htons(80) };
 v4_to_v6(&((struct sockaddr_in *)result->ai_addr)->sin_addr, &a.sin6_addr);
 freeaddrinfo(result);

 if((error = connect(sock, (struct sockaddr *)&a, sizeof(a))) == -1) {
  perror("connect");
  return EXIT_FAILURE;
 }

 return EXIT_SUCCESS;
}
