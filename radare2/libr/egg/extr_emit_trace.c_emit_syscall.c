
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int REgg ;


 int snprintf (char*,int,char*,int) ;
 char* strdup (char*) ;

__attribute__((used)) static char *emit_syscall (REgg *egg, int num) {
 char buf[32];
 snprintf (buf, sizeof (buf), "syscall (%d)\n", num);
 return strdup (buf);
}
