#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  usec_t ;
struct TYPE_3__ {int mode; } ;
struct TYPE_4__ {scalar_t__ sem_nsems; TYPE_1__ sem_perm; } ;
struct semid_kernel {TYPE_2__ u; } ;
typedef  int collected_number ;
typedef  int /*<<< orphan*/  RRDSET ;
typedef  int /*<<< orphan*/  RRDDIM ;

/* Variables and functions */
 int FUNC0 (char*,int*,int) ; 
 int FUNC1 (char*,int*,struct semid_kernel*,int) ; 
 int /*<<< orphan*/  NETDATA_CHART_PRIO_SYSTEM_IPC_SEMAPHORES ; 
 int /*<<< orphan*/  NETDATA_CHART_PRIO_SYSTEM_IPC_SEM_ARRAYS ; 
 int /*<<< orphan*/  RRDSET_TYPE_AREA ; 
 int /*<<< orphan*/  RRD_ALGORITHM_ABSOLUTE ; 
 int SEM_ALLOC ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct semid_kernel* FUNC3 (struct semid_kernel*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,char*,char*,char*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int) ; 

int FUNC10(int update_every, usec_t dt) {
    (void)dt;
    static int mib_semmni[3] = {0, 0, 0};
    struct ipc_sem {
        int semmni;
        collected_number sets;
        collected_number semaphores;
    } ipc_sem = {0, 0, 0};

    if (FUNC9(FUNC0("kern.ipc.semmni", mib_semmni, ipc_sem.semmni))) {
        FUNC2("DISABLED: system.ipc_semaphores chart");
        FUNC2("DISABLED: system.ipc_semaphore_arrays chart");
        FUNC2("DISABLED: kern.ipc.sem module");
        return 1;
    } else {
        static struct semid_kernel *ipc_sem_data = NULL;
        static int old_semmni = 0;
        static int mib_sema[3] = {0, 0, 0};

        if (FUNC9(ipc_sem.semmni != old_semmni)) {
            ipc_sem_data = FUNC3(ipc_sem_data, sizeof(struct semid_kernel) * ipc_sem.semmni);
            old_semmni = ipc_sem.semmni;
        }
        if (FUNC9(FUNC1("kern.ipc.sema", mib_sema, ipc_sem_data, sizeof(struct semid_kernel) * ipc_sem.semmni))) {
            FUNC2("DISABLED: system.ipc_semaphores chart");
            FUNC2("DISABLED: system.ipc_semaphore_arrays chart");
            FUNC2("DISABLED: kern.ipc.sem module");
            return 1;
        } else {
            int i;

            for (i = 0; i < ipc_sem.semmni; i++) {
                if (FUNC9(ipc_sem_data[i].u.sem_perm.mode & SEM_ALLOC)) {
                    ipc_sem.sets += 1;
                    ipc_sem.semaphores += ipc_sem_data[i].u.sem_nsems;
                }
            }

            // --------------------------------------------------------------------

            static RRDSET *st_semaphores = NULL, *st_semaphore_arrays = NULL;
            static RRDDIM *rd_semaphores = NULL, *rd_semaphore_arrays = NULL;

            if (FUNC9(!st_semaphores)) {
                st_semaphores = FUNC6(
                        "system",
                        "ipc_semaphores",
                        NULL,
                        "ipc semaphores",
                        NULL,
                        "IPC Semaphores",
                        "semaphores",
                        "freebsd.plugin",
                        "kern.ipc.sem",
                        NETDATA_CHART_PRIO_SYSTEM_IPC_SEMAPHORES,
                        update_every,
                        RRDSET_TYPE_AREA
                );

                rd_semaphores = FUNC4(st_semaphores, "semaphores", NULL, 1, 1, RRD_ALGORITHM_ABSOLUTE);
            }
            else FUNC8(st_semaphores);

            FUNC5(st_semaphores, rd_semaphores, ipc_sem.semaphores);
            FUNC7(st_semaphores);

            // --------------------------------------------------------------------

            if (FUNC9(!st_semaphore_arrays)) {
                st_semaphore_arrays = FUNC6(
                        "system",
                        "ipc_semaphore_arrays",
                        NULL,
                        "ipc semaphores",
                        NULL,
                        "IPC Semaphore Arrays",
                        "arrays",
                        "freebsd.plugin",
                        "kern.ipc.sem",
                        NETDATA_CHART_PRIO_SYSTEM_IPC_SEM_ARRAYS,
                        update_every,
                        RRDSET_TYPE_AREA
                );

                rd_semaphore_arrays = FUNC4(st_semaphore_arrays, "arrays", NULL, 1, 1, RRD_ALGORITHM_ABSOLUTE);
            }
            else FUNC8(st_semaphore_arrays);

            FUNC5(st_semaphore_arrays, rd_semaphore_arrays, ipc_sem.sets);
            FUNC7(st_semaphore_arrays);
        }
    }

    return 0;
}