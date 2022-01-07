
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RIODesc ;


 int bochs_close (int ) ;
 int desc ;
 int lprintf (char*) ;

__attribute__((used)) static int __close(RIODesc *fd) {
 lprintf("io_close\n");
 bochs_close (desc);
 return 1;
}
