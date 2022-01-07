
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int usec_t ;
typedef int u_long ;
struct TYPE_3__ {int mode; } ;
struct TYPE_4__ {scalar_t__ shm_segsz; TYPE_1__ shm_perm; } ;
struct shmid_kernel {TYPE_2__ u; } ;
typedef int collected_number ;
typedef int RRDSET ;
typedef int RRDDIM ;


 int GETSYSCTL_SIMPLE (char*,int*,int) ;
 int GETSYSCTL_WSIZE (char*,int*,struct shmid_kernel*,int) ;
 int KILO_FACTOR ;
 int NETDATA_CHART_PRIO_SYSTEM_IPC_SHARED_MEM_SEGS ;
 int NETDATA_CHART_PRIO_SYSTEM_IPC_SHARED_MEM_SIZE ;
 int RRDSET_TYPE_AREA ;
 int RRD_ALGORITHM_ABSOLUTE ;
 int error (char*) ;
 struct shmid_kernel* reallocz (struct shmid_kernel*,int) ;
 int * rrddim_add (int *,char*,int *,int,int,int ) ;
 int rrddim_set_by_pointer (int *,int *,int) ;
 int * rrdset_create_localhost (char*,char*,int *,char*,int *,char*,char*,char*,char*,int ,int,int ) ;
 int rrdset_done (int *) ;
 int rrdset_next (int *) ;
 scalar_t__ unlikely (int) ;

int do_kern_ipc_shm(int update_every, usec_t dt) {
    (void)dt;
    static int mib_shmmni[3] = {0, 0, 0};
    struct ipc_shm {
        u_long shmmni;
        collected_number segs;
        collected_number segsize;
    } ipc_shm = {0, 0, 0};

    if (unlikely(GETSYSCTL_SIMPLE("kern.ipc.shmmni", mib_shmmni, ipc_shm.shmmni))) {
        error("DISABLED: system.ipc_shared_mem_segs chart");
        error("DISABLED: system.ipc_shared_mem_size chart");
        error("DISABLED: kern.ipc.shmmodule");
        return 1;
    } else {
        static struct shmid_kernel *ipc_shm_data = ((void*)0);
        static u_long old_shmmni = 0;
        static int mib_shmsegs[3] = {0, 0, 0};

        if (unlikely(ipc_shm.shmmni != old_shmmni)) {
            ipc_shm_data = reallocz(ipc_shm_data, sizeof(struct shmid_kernel) * ipc_shm.shmmni);
            old_shmmni = ipc_shm.shmmni;
        }
        if (unlikely(
                GETSYSCTL_WSIZE("kern.ipc.shmsegs", mib_shmsegs, ipc_shm_data, sizeof(struct shmid_kernel) * ipc_shm.shmmni))) {
            error("DISABLED: system.ipc_shared_mem_segs chart");
            error("DISABLED: system.ipc_shared_mem_size chart");
            error("DISABLED: kern.ipc.shmmodule");
            return 1;
        } else {
            unsigned long i;

            for (i = 0; i < ipc_shm.shmmni; i++) {
                if (unlikely(ipc_shm_data[i].u.shm_perm.mode & 0x0800)) {
                    ipc_shm.segs += 1;
                    ipc_shm.segsize += ipc_shm_data[i].u.shm_segsz;
                }
            }



            static RRDSET *st_segs = ((void*)0), *st_size = ((void*)0);
            static RRDDIM *rd_segments = ((void*)0), *rd_allocated = ((void*)0);

            if (unlikely(!st_segs)) {
                st_segs = rrdset_create_localhost(
                        "system",
                        "ipc_shared_mem_segs",
                        ((void*)0),
                        "ipc shared memory",
                        ((void*)0),
                        "IPC Shared Memory Segments",
                        "segments",
                        "freebsd.plugin",
                        "kern.ipc.shm",
                        NETDATA_CHART_PRIO_SYSTEM_IPC_SHARED_MEM_SEGS,
                        update_every,
                        RRDSET_TYPE_AREA
                );

                rd_segments = rrddim_add(st_segs, "segments", ((void*)0), 1, 1, RRD_ALGORITHM_ABSOLUTE);
            }
            else rrdset_next(st_segs);

            rrddim_set_by_pointer(st_segs, rd_segments, ipc_shm.segs);
            rrdset_done(st_segs);



            if (unlikely(!st_size)) {
                st_size = rrdset_create_localhost(
                        "system",
                        "ipc_shared_mem_size",
                        ((void*)0),
                        "ipc shared memory",
                        ((void*)0),
                        "IPC Shared Memory Segments Size",
                        "KiB",
                        "freebsd.plugin",
                        "kern.ipc.shm",
                        NETDATA_CHART_PRIO_SYSTEM_IPC_SHARED_MEM_SIZE,
                        update_every,
                        RRDSET_TYPE_AREA
                );

                rd_allocated = rrddim_add(st_size, "allocated", ((void*)0), 1, KILO_FACTOR, RRD_ALGORITHM_ABSOLUTE);
            }
            else rrdset_next(st_size);

            rrddim_set_by_pointer(st_size, rd_allocated, ipc_shm.segsize);
            rrdset_done(st_size);
        }
    }

    return 0;
}
