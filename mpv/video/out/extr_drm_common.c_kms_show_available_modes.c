
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mp_log {int dummy; } ;
struct TYPE_4__ {unsigned int count_modes; TYPE_2__* modes; } ;
typedef TYPE_1__ drmModeConnector ;
struct TYPE_5__ {int vdisplay; int hdisplay; int name; } ;


 int mode_get_Hz (TYPE_2__*) ;
 int mp_info (struct mp_log*,char*,unsigned int,int ,int ,int ,int ) ;

__attribute__((used)) static void kms_show_available_modes(
    struct mp_log *log, const drmModeConnector *connector)
{
    for (unsigned int i = 0; i < connector->count_modes; i++) {
        mp_info(log, "  Mode %d: %s (%dx%d@%.2fHz)\n", i,
                connector->modes[i].name,
                connector->modes[i].hdisplay,
                connector->modes[i].vdisplay,
                mode_get_Hz(&connector->modes[i]));
    }
}
