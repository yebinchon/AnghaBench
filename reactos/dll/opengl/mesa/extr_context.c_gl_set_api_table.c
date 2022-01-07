
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct gl_api_table {int dummy; } ;
struct TYPE_3__ {struct gl_api_table const Exec; int API; } ;
typedef TYPE_1__ GLcontext ;


 int MEMCPY (int *,struct gl_api_table const*,int) ;

void gl_set_api_table( GLcontext *ctx, const struct gl_api_table *api )
{
   if (api) {
      MEMCPY( &ctx->API, api, sizeof(struct gl_api_table) );
   }
   else {
      MEMCPY( &ctx->API, &ctx->Exec, sizeof(struct gl_api_table) );
   }
}
