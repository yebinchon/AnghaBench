
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ lfs1_size_t ;
struct TYPE_4__ {scalar_t__ nlen; scalar_t__ alen; scalar_t__ elen; } ;
struct TYPE_5__ {TYPE_1__ d; } ;
typedef TYPE_2__ lfs1_entry_t ;



__attribute__((used)) static inline lfs1_size_t lfs1_entry_size(const lfs1_entry_t *entry) {
    return 4 + entry->d.elen + entry->d.alen + entry->d.nlen;
}
