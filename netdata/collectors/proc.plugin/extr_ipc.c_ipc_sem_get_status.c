
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ushort ;
union semun {int * array; } ;
struct seminfo {int semaem; int semusz; } ;
struct ipc_status {int semaem; int semusz; } ;


 int SEM_INFO ;
 int error (char*) ;
 scalar_t__ semctl (int ,int ,int ,union semun) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int ipc_sem_get_status(struct ipc_status *st) {
    struct seminfo seminfo;
    union semun arg;

    arg.array = (ushort *) (void *) &seminfo;

    if(unlikely(semctl (0, 0, SEM_INFO, arg) < 0)) {

        static int error_shown = 0;
        if(unlikely(!error_shown)) {
            error("IPC: kernel is not configured for semaphores");
            error_shown = 1;
        }
        st->semusz = 0;
        st->semaem = 0;
        return -1;
    }

    st->semusz = seminfo.semusz;
    st->semaem = seminfo.semaem;
    return 0;
}
