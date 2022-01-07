
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* input; int* output; } ;
typedef TYPE_1__ R2Pipe ;


 int R_FREE (TYPE_1__*) ;
 int atoi (char*) ;
 int eprintf (char*) ;
 int free (char*) ;
 char* r_sys_getenv (char*) ;

__attribute__((used)) static R2Pipe* r2pipe_open_spawn(R2Pipe* r2pipe) {
 eprintf ("r2pipe_open(NULL) not supported on windows\n");
 return ((void*)0);

}
