
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* file; } ;
struct TYPE_4__ {unsigned int scale; int rounderr; } ;
typedef TYPE_2__ HLPFILE_PAGE ;



__attribute__((used)) static unsigned HLPFILE_HalfPointsScale(HLPFILE_PAGE* page, unsigned pts)
{
    return pts * page->file->scale - page->file->rounderr;
}
