
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int avl ;
struct TYPE_3__ {int machine_guid; scalar_t__ hash_machine_guid; } ;
typedef TYPE_1__ RRDHOST ;


 int D_RRDHOST ;
 int GUID_LEN ;
 scalar_t__ avl_search_lock (int *,int *) ;
 int debug (int ,char*,char const*) ;
 int rrdhost_root_index ;
 scalar_t__ simple_hash (int ) ;
 int strncpyz (int ,char const*,int ) ;

RRDHOST *rrdhost_find_by_guid(const char *guid, uint32_t hash) {
    debug(D_RRDHOST, "Searching in index for host with guid '%s'", guid);

    RRDHOST tmp;
    strncpyz(tmp.machine_guid, guid, GUID_LEN);
    tmp.hash_machine_guid = (hash)?hash:simple_hash(tmp.machine_guid);

    return (RRDHOST *)avl_search_lock(&(rrdhost_root_index), (avl *) &tmp);
}
