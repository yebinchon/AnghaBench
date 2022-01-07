
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int selinux_status_close () ;

__attribute__((used)) static void
sepgsql_avc_exit(int code, Datum arg)
{
 selinux_status_close();
}
