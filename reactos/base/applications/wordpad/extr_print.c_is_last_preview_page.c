
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* pageEnds; scalar_t__ textlength; } ;
typedef int BOOL ;


 TYPE_1__ preview ;

__attribute__((used)) static BOOL is_last_preview_page(int page)
{
    return preview.pageEnds[page - 1] >= preview.textlength;
}
