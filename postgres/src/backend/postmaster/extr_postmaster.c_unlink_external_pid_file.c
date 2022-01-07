
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 scalar_t__ external_pid_file ;
 int unlink (scalar_t__) ;

__attribute__((used)) static void
unlink_external_pid_file(int status, Datum arg)
{
 if (external_pid_file)
  unlink(external_pid_file);
}
