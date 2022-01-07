
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jmp_buf ;


 int abrtflag ;
 int fflush (int ) ;
 int longjmp (int ,int) ;
 int printf (char*) ;
 scalar_t__ ptflag ;
 int stdout ;

__attribute__((used)) static void
cmdabort(int sig)
{
 extern jmp_buf ptabort;

 printf("\n");
 (void) fflush(stdout);
 abrtflag++;
 if (ptflag)
  longjmp(ptabort,1);
}
