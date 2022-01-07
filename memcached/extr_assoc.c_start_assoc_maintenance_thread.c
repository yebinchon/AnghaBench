
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DEFAULT_HASH_BULK_MOVE ;
 int assoc_maintenance_thread ;
 scalar_t__ atoi (char*) ;
 int fprintf (int ,char*,char*) ;
 char* getenv (char*) ;
 scalar_t__ hash_bulk_move ;
 int maintenance_tid ;
 int pthread_create (int *,int *,int ,int *) ;
 int stderr ;
 char* strerror (int) ;

int start_assoc_maintenance_thread() {
    int ret;
    char *env = getenv("MEMCACHED_HASH_BULK_MOVE");
    if (env != ((void*)0)) {
        hash_bulk_move = atoi(env);
        if (hash_bulk_move == 0) {
            hash_bulk_move = DEFAULT_HASH_BULK_MOVE;
        }
    }

    if ((ret = pthread_create(&maintenance_tid, ((void*)0),
                              assoc_maintenance_thread, ((void*)0))) != 0) {
        fprintf(stderr, "Can't create thread: %s\n", strerror(ret));
        return -1;
    }
    return 0;
}
