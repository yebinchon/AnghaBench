
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned
id_already_exists(const size_t *ids, unsigned count, size_t new_id)
{
    unsigned i;

    for (i=0; i<count; i++) {
        if (ids[i] == new_id)
            return 1;
    }
    return 0;
}
