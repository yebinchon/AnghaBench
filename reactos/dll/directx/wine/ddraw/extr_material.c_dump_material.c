
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dwSize; } ;
typedef TYPE_1__ D3DMATERIAL ;


 int TRACE (char*,int ) ;

__attribute__((used)) static void dump_material(const D3DMATERIAL *mat)
{
    TRACE("  dwSize : %d\n", mat->dwSize);
}
