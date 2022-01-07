
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZRAM_DEVICE ;
typedef int DICTIONARY ;


 int _collect_zram_metrics (char*,int *,int,int *) ;

__attribute__((used)) static int collect_zram_metrics(char *name, void *entry, void *data) {
    (void)name;

    return _collect_zram_metrics(name, (ZRAM_DEVICE *)entry, 1, (DICTIONARY *)data);
}
