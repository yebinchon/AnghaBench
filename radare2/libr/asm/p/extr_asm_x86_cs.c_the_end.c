
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cd ;
 int cs_close (scalar_t__*) ;
 int cs_free (int *,int ) ;
 int * insn ;
 int n ;

__attribute__((used)) static bool the_end(void *p) {
 if (cd) {
  cs_close (&cd);
  cd = 0;
 }
 return 1;
}
