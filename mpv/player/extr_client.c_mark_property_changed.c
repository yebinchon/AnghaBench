
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct observe_property {int changed; int async_change_ts; } ;
struct mpv_handle {int lowest_changed; struct observe_property** properties; } ;


 int MPMIN (int ,int) ;

__attribute__((used)) static void mark_property_changed(struct mpv_handle *client, int index)
{
    struct observe_property *prop = client->properties[index];
    prop->changed = 1;
    prop->async_change_ts += 1;
    client->lowest_changed = MPMIN(client->lowest_changed, index);
}
