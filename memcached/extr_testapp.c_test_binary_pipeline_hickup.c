
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_t ;
typedef enum test_return { ____Placeholder_test_return } test_return ;


 int PROTOCOL_BINARY_CMD_QUITQ ;
 int TEST_FAIL ;
 int TEST_PASS ;
 int allow_closed_read ;
 int binary_hickup_recv_verification_thread ;
 int fprintf (int ,char*,char*) ;
 int free (void*) ;
 int hickup_thread_running ;
 void* malloc (size_t) ;
 int pthread_create (int *,int *,int ,int *) ;
 int pthread_join (int ,int *) ;
 size_t raw_command (void*,size_t,int ,int *,int ,int *,int ) ;
 int safe_send (void*,size_t,int) ;
 int srand (int) ;
 int stderr ;
 char* strerror (int) ;
 int test_binary_pipeline_hickup_chunk (void*,size_t) ;
 scalar_t__ time (int *) ;
 int usleep (int) ;

__attribute__((used)) static enum test_return test_binary_pipeline_hickup(void)
{
    size_t buffersize = 65 * 1024;
    void *buffer = malloc(buffersize);
    int ii;

    pthread_t tid;
    int ret;
    allow_closed_read = 1;
    hickup_thread_running = 1;
    if ((ret = pthread_create(&tid, ((void*)0),
                              binary_hickup_recv_verification_thread, ((void*)0))) != 0) {
        fprintf(stderr, "Can't create thread: %s\n", strerror(ret));
        free(buffer);
        return TEST_FAIL;
    }


    usleep(250);

    srand((int)time(((void*)0)));
    for (ii = 0; ii < 2; ++ii) {
        test_binary_pipeline_hickup_chunk(buffer, buffersize);
    }


    size_t len = raw_command(buffer, buffersize, PROTOCOL_BINARY_CMD_QUITQ,
                             ((void*)0), 0, ((void*)0), 0);
    safe_send(buffer, len, 0);

    pthread_join(tid, ((void*)0));
    free(buffer);
    return TEST_PASS;
}
