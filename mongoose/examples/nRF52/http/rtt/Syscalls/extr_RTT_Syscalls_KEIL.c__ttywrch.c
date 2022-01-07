
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fflush (int ) ;
 int fputc (int,int ) ;
 int stdout ;

void _ttywrch(int c) {
  fputc(c, stdout);
  fflush(stdout);
}
