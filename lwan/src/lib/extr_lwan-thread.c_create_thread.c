
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct lwan_thread {int* pipe_fd; int pending_fds; struct lwan* lwan; int self; int epoll_fd; int wheel; } ;
struct TYPE_4__ {size_t max_fd; } ;
struct lwan {TYPE_2__ thread; } ;
struct TYPE_3__ {int * ptr; } ;
struct epoll_event {TYPE_1__ data; int events; } ;
typedef int pthread_attr_t ;


 int EFD_CLOEXEC ;
 int EFD_NONBLOCK ;
 int EFD_SEMAPHORE ;
 int EPOLLIN ;
 int EPOLL_CLOEXEC ;
 int EPOLL_CTL_ADD ;
 int O_CLOEXEC ;
 int O_NONBLOCK ;
 int PTHREAD_CREATE_JOINABLE ;
 int PTHREAD_SCOPE_SYSTEM ;
 int epoll_create1 (int ) ;
 scalar_t__ epoll_ctl (int ,int ,int,struct epoll_event*) ;
 int eventfd (int ,int) ;
 int lwan_status_critical (char*,...) ;
 int lwan_status_critical_perror (char*) ;
 int memset (struct lwan_thread*,int ,int) ;
 scalar_t__ pipe2 (int*,int) ;
 scalar_t__ pthread_attr_destroy (int *) ;
 scalar_t__ pthread_attr_init (int *) ;
 scalar_t__ pthread_attr_setdetachstate (int *,int ) ;
 scalar_t__ pthread_attr_setscope (int *,int ) ;
 scalar_t__ pthread_create (int *,int *,int ,struct lwan_thread*) ;
 scalar_t__ spsc_queue_init (int *,size_t) ;
 int thread_io_loop ;
 int timeouts_open (int*) ;

__attribute__((used)) static void create_thread(struct lwan *l, struct lwan_thread *thread)
{
    int ignore;
    pthread_attr_t attr;

    memset(thread, 0, sizeof(*thread));
    thread->lwan = l;

    thread->wheel = timeouts_open(&ignore);
    if (!thread->wheel)
        lwan_status_critical("Could not create timer wheel");

    if ((thread->epoll_fd = epoll_create1(EPOLL_CLOEXEC)) < 0)
        lwan_status_critical_perror("epoll_create");

    if (pthread_attr_init(&attr))
        lwan_status_critical_perror("pthread_attr_init");

    if (pthread_attr_setscope(&attr, PTHREAD_SCOPE_SYSTEM))
        lwan_status_critical_perror("pthread_attr_setscope");

    if (pthread_attr_setdetachstate(&attr, PTHREAD_CREATE_JOINABLE))
        lwan_status_critical_perror("pthread_attr_setdetachstate");
    if (pipe2(thread->pipe_fd, O_NONBLOCK | O_CLOEXEC) < 0)
        lwan_status_critical_perror("pipe");


    struct epoll_event event = { .events = EPOLLIN, .data.ptr = ((void*)0) };
    if (epoll_ctl(thread->epoll_fd, EPOLL_CTL_ADD, thread->pipe_fd[0], &event) < 0)
        lwan_status_critical_perror("epoll_ctl");

    if (pthread_create(&thread->self, &attr, thread_io_loop, thread))
        lwan_status_critical_perror("pthread_create");

    if (pthread_attr_destroy(&attr))
        lwan_status_critical_perror("pthread_attr_destroy");

    size_t n_queue_fds = thread->lwan->thread.max_fd;
    if (spsc_queue_init(&thread->pending_fds, n_queue_fds) < 0) {
        lwan_status_critical("Could not initialize pending fd "
                             "queue width %zu elements", n_queue_fds);
    }
}
