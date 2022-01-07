
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int st_comp_ratio; int st_alloc_efficiency; int st_savings; int st_usage; } ;
typedef TYPE_1__ ZRAM_DEVICE ;
typedef int DICTIONARY ;


 int dictionary_del (int *,char*) ;
 scalar_t__ dictionary_get (int *,char*) ;
 int info (char*,char*) ;
 int rrdset_obsolete_and_pointer_null (int ) ;

__attribute__((used)) static void free_device(DICTIONARY *dict, char *name)
{
    ZRAM_DEVICE *d = (ZRAM_DEVICE*)dictionary_get(dict, name);
    info("ZRAM : Disabling monitoring of device %s", name);
    rrdset_obsolete_and_pointer_null(d->st_usage);
    rrdset_obsolete_and_pointer_null(d->st_savings);
    rrdset_obsolete_and_pointer_null(d->st_alloc_efficiency);
    rrdset_obsolete_and_pointer_null(d->st_comp_ratio);
    dictionary_del(dict, name);
}
