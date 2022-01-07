
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* dlgw; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
typedef TYPE_3__ pagesetup_data ;
struct TYPE_5__ {int rtMargin; } ;
typedef int RECT ;



__attribute__((used)) static inline RECT *pagesetup_get_margin_rect(const pagesetup_data *data)
{
    return &data->u.dlgw->rtMargin;
}
