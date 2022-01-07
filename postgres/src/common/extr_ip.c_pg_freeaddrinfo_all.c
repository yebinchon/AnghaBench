
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct addrinfo {struct addrinfo* ai_addr; struct addrinfo* ai_next; } ;


 int AF_UNIX ;
 int free (struct addrinfo*) ;
 int freeaddrinfo (struct addrinfo*) ;

void
pg_freeaddrinfo_all(int hint_ai_family, struct addrinfo *ai)
{
 {

  if (ai != ((void*)0))
   freeaddrinfo(ai);
 }
}
