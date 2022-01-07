
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Save; int Exec; } ;
typedef TYPE_1__ GLcontext ;


 int check_pointers (int *) ;
 int init_dlist_pointers (int *) ;
 int init_exec_pointers (int *) ;

void gl_init_api_function_pointers( GLcontext *ctx )
{
   init_exec_pointers( &ctx->Exec );

   init_dlist_pointers( &ctx->Save );


   check_pointers( &ctx->Exec );
   check_pointers( &ctx->Save );
}
