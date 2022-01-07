
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fd_set ;


 int FD_ZERO (int *) ;
 int code ;
 int empty (int *,int ) ;
 int getreply (int ) ;
 int lostpeer () ;
 int perror (char*) ;

void reset(int argc, const char *argv[])
{

 fd_set mask;
 int nfnd = 1;

 FD_ZERO(&mask);
 while (nfnd > 0) {

  if ((nfnd = empty(&mask,0)) < 0) {
   perror("reset");
   code = -1;
   lostpeer();
  }
  else if (nfnd) {
   (void) getreply(0);
  }
 }
}
