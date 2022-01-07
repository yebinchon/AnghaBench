
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ handle_stray_noerror () ;
 int tcc_error (char*) ;

__attribute__((used)) static void handle_stray(void)
{
 if (handle_stray_noerror ()) {
  tcc_error ("stray '\\' in program");
 }
}
