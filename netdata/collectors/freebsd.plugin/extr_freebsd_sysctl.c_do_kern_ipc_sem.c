
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int usec_t ;
struct TYPE_3__ {int mode; } ;
struct TYPE_4__ {scalar_t__ sem_nsems; TYPE_1__ sem_perm; } ;
struct semid_kernel {TYPE_2__ u; } ;
typedef int collected_number ;
typedef int RRDSET ;
typedef int RRDDIM ;


 int GETSYSCTL_SIMPLE (char*,int*,int) ;
 int GETSYSCTL_WSIZE (char*,int*,struct semid_kernel*,int) ;
 int NETDATA_CHART_PRIO_SYSTEM_IPC_SEMAPHORES ;
 int NETDATA_CHART_PRIO_SYSTEM_IPC_SEM_ARRAYS ;
 int RRDSET_TYPE_AREA ;
 int RRD_ALGORITHM_ABSOLUTE ;
 int SEM_ALLOC ;
 int error (char*) ;
 struct semid_kernel* reallocz (struct semid_kernel*,int) ;
 int * rrddim_add (int *,char*,int *,int,int,int ) ;
 int rrddim_set_by_pointer (int *,int *,int) ;
 int * rrdset_create_localhost (char*,char*,int *,char*,int *,char*,char*,char*,char*,int ,int,int ) ;
 int rrdset_done (int *) ;
 int rrdset_next (int *) ;
 scalar_t__ unlikely (int) ;

int do_kern_ipc_sem(int update_every, usec_t dt) {
    (void)dt;
    static int mib_semmni[3] = {0, 0, 0};
    struct ipc_sem {
        int semmni;
        collected_number sets;
        collected_number semaphores;
    } ipc_sem = {0, 0, 0};

    if (unlikely(GETSYSCTL_SIMPLE("kern.ipc.semmni", mib_semmni, ipc_sem.semmni))) {
        error("DISABLED: system.ipc_semaphores chart");
        error("DISABLED: system.ipc_semaphore_arrays chart");
        error("DISABLED: kern.ipc.sem module");
        return 1;
    } else {
        static struct semid_kernel *ipc_sem_data = ((void*)0);
        static int old_semmni = 0;
        static int mib_sema[3] = {0, 0, 0};

        if (unlikely(ipc_sem.semmni != old_semmni)) {
            ipc_sem_data = reallocz(ipc_sem_data, sizeof(struct semid_kernel) * ipc_sem.semmni);
            old_semmni = ipc_sem.semmni;
        }
        if (unlikely(GETSYSCTL_WSIZE("kern.ipc.sema", mib_sema, ipc_sem_data, sizeof(struct semid_kernel) * ipc_sem.semmni))) {
            error("DISABLED: system.ipc_semaphores chart");
            error("DISABLED: system.ipc_semaphore_arrays chart");
            error("DISABLED: kern.ipc.sem module");
            return 1;
        } else {
            int i;

            for (i = 0; i < ipc_sem.semmni; i++) {
                if (unlikely(ipc_sem_data[i].u.sem_perm.mode & SEM_ALLOC)) {
                    ipc_sem.sets += 1;
                    ipc_sem.semaphores += ipc_sem_data[i].u.sem_nsems;
                }
            }



            static RRDSET *st_semaphores = ((void*)0), *st_semaphore_arrays = ((void*)0);
            static RRDDIM *rd_semaphores = ((void*)0), *rd_semaphore_arrays = ((void*)0);

            if (unlikely(!st_semaphores)) {
                st_semaphores = rrdset_create_localhost(
                        "system",
                        "ipc_semaphores",
                        ((void*)0),
                        "ipc semaphores",
                        ((void*)0),
                        "IPC Semaphores",
                        "semaphores",
                        "freebsd.plugin",
                        "kern.ipc.sem",
                        NETDATA_CHART_PRIO_SYSTEM_IPC_SEMAPHORES,
                        update_every,
                        RRDSET_TYPE_AREA
                );

                rd_semaphores = rrddim_add(st_semaphores, "semaphores", ((void*)0), 1, 1, RRD_ALGORITHM_ABSOLUTE);
            }
            else rrdset_next(st_semaphores);

            rrddim_set_by_pointer(st_semaphores, rd_semaphores, ipc_sem.semaphores);
            rrdset_done(st_semaphores);



            if (unlikely(!st_semaphore_arrays)) {
                st_semaphore_arrays = rrdset_create_localhost(
                        "system",
                        "ipc_semaphore_arrays",
                        ((void*)0),
                        "ipc semaphores",
                        ((void*)0),
                        "IPC Semaphore Arrays",
                        "arrays",
                        "freebsd.plugin",
                        "kern.ipc.sem",
                        NETDATA_CHART_PRIO_SYSTEM_IPC_SEM_ARRAYS,
                        update_every,
                        RRDSET_TYPE_AREA
                );

                rd_semaphore_arrays = rrddim_add(st_semaphore_arrays, "arrays", ((void*)0), 1, 1, RRD_ALGORITHM_ABSOLUTE);
            }
            else rrdset_next(st_semaphore_arrays);

            rrddim_set_by_pointer(st_semaphore_arrays, rd_semaphore_arrays, ipc_sem.sets);
            rrdset_done(st_semaphore_arrays);
        }
    }

    return 0;
}
