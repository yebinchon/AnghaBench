
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int _ (char*) ;
 int error (int ) ;
 int exit (int ) ;

__attribute__((used)) static void
time_overflow(void)
{
 error(_("time overflow"));
 exit(EXIT_FAILURE);
}
