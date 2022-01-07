
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int rrdpush_sender_spawn; int hostname; int rrdpush_sender_thread; } ;
typedef TYPE_1__ RRDHOST ;


 int NETDATA_THREAD_OPTION_JOINABLE ;
 int NETDATA_THREAD_TAG_MAX ;
 int error (char*,int ) ;
 scalar_t__ netdata_thread_create (int *,char*,int ,int ,void*) ;
 int rrdhost_unlock (TYPE_1__*) ;
 int rrdhost_wrlock (TYPE_1__*) ;
 int rrdpush_sender_thread ;
 int snprintfz (char*,int ,char*,int ) ;

__attribute__((used)) static void rrdpush_sender_thread_spawn(RRDHOST *host) {
    rrdhost_wrlock(host);

    if(!host->rrdpush_sender_spawn) {
        char tag[NETDATA_THREAD_TAG_MAX + 1];
        snprintfz(tag, NETDATA_THREAD_TAG_MAX, "STREAM_SENDER[%s]", host->hostname);

        if(netdata_thread_create(&host->rrdpush_sender_thread, tag, NETDATA_THREAD_OPTION_JOINABLE, rrdpush_sender_thread, (void *) host))
            error("STREAM %s [send]: failed to create new thread for client.", host->hostname);
        else
            host->rrdpush_sender_spawn = 1;
    }

    rrdhost_unlock(host);
}
