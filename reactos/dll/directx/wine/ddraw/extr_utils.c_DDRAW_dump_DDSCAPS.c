
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int dwCaps; } ;
struct TYPE_6__ {scalar_t__ dwCaps4; } ;
struct TYPE_7__ {TYPE_1__ u1; scalar_t__ dwCaps3; scalar_t__ dwCaps2; int dwCaps; } ;
typedef TYPE_2__ DDSCAPS2 ;
typedef TYPE_3__ DDSCAPS ;


 int DDRAW_dump_DDSCAPS2 (TYPE_2__*) ;

__attribute__((used)) static void
DDRAW_dump_DDSCAPS(const DDSCAPS *in)
{
    DDSCAPS2 in_bis;

    in_bis.dwCaps = in->dwCaps;
    in_bis.dwCaps2 = 0;
    in_bis.dwCaps3 = 0;
    in_bis.u1.dwCaps4 = 0;

    DDRAW_dump_DDSCAPS2(&in_bis);
}
