
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;
typedef int FILE ;


 int * custom_popene (char const*,int volatile*,int ) ;
 int environ ;

FILE *mypopen(const char *command, volatile pid_t *pidptr) {
    return custom_popene(command, pidptr, environ);
}
