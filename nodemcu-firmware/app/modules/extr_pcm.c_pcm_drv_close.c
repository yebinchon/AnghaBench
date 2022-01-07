
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_4__ {TYPE_1__* drv; } ;
struct TYPE_3__ {int (* close ) (int ) ;} ;


 int GET_PUD () ;
 int cfg ;
 int pcm_drv_free (int *) ;
 TYPE_2__* pud ;
 int stub1 (int ) ;

__attribute__((used)) static int pcm_drv_close( lua_State *L )
{
  GET_PUD();

  pud->drv->close( cfg );

  return pcm_drv_free( L );
}
