
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct lwan {int n_cpus; } ;


 int* alloca (int) ;
 int memcpy (size_t*,int*,int) ;

__attribute__((used)) static void
siblings_to_schedtbl(struct lwan *l, uint32_t siblings[], uint32_t schedtbl[])
{
    int *seen = alloca(l->n_cpus * sizeof(int));
    int n_schedtbl = 0;

    for (uint32_t i = 0; i < l->n_cpus; i++)
        seen[i] = -1;

    for (uint32_t i = 0; i < l->n_cpus; i++) {
        if (seen[siblings[i]] < 0) {
            seen[siblings[i]] = (int)i;
        } else {
            schedtbl[n_schedtbl++] = (uint32_t)seen[siblings[i]];
            schedtbl[n_schedtbl++] = i;
        }
    }

    if (!n_schedtbl)
        memcpy(schedtbl, seen, l->n_cpus * sizeof(int));
}
