
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dlgw; } ;
struct TYPE_5__ {TYPE_1__ u; } ;
typedef TYPE_2__ pagesetup_data ;
typedef int LPARAM ;



__attribute__((used)) static inline LPARAM pagesetup_get_dlg_struct(const pagesetup_data *data)
{
    return (LPARAM)data->u.dlgw;
}
