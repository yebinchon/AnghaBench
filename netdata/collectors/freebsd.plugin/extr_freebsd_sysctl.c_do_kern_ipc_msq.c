
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int usec_t ;
struct TYPE_2__ {scalar_t__ msg_qbytes; scalar_t__ msg_cbytes; scalar_t__ msg_qnum; } ;
struct msqid_kernel {TYPE_1__ u; } ;
typedef int collected_number ;
typedef int RRDSET ;
typedef int RRDDIM ;


 int GETSYSCTL_SIMPLE (char*,int*,int) ;
 int GETSYSCTL_WSIZE (char*,int*,struct msqid_kernel*,int) ;
 int NETDATA_CHART_PRIO_SYSTEM_IPC_MSQ_MESSAGES ;
 int NETDATA_CHART_PRIO_SYSTEM_IPC_MSQ_QUEUES ;
 int NETDATA_CHART_PRIO_SYSTEM_IPC_MSQ_SIZE ;
 int RRDSET_TYPE_AREA ;
 int RRDSET_TYPE_LINE ;
 int RRD_ALGORITHM_ABSOLUTE ;
 int error (char*) ;
 struct msqid_kernel* reallocz (struct msqid_kernel*,int) ;
 int * rrddim_add (int *,char*,int *,int,int,int ) ;
 int rrddim_set_by_pointer (int *,int *,int) ;
 int * rrdset_create_localhost (char*,char*,int *,char*,int *,char*,char*,char*,char*,int ,int,int ) ;
 int rrdset_done (int *) ;
 int rrdset_next (int *) ;
 scalar_t__ unlikely (int) ;

int do_kern_ipc_msq(int update_every, usec_t dt) {
    (void)dt;
    static int mib_msgmni[3] = {0, 0, 0};
    struct ipc_msq {
        int msgmni;
        collected_number queues;
        collected_number messages;
        collected_number usedsize;
        collected_number allocsize;
    } ipc_msq = {0, 0, 0, 0, 0};

    if (unlikely(GETSYSCTL_SIMPLE("kern.ipc.msgmni", mib_msgmni, ipc_msq.msgmni))) {
        error("DISABLED: system.ipc_msq_queues chart");
        error("DISABLED: system.ipc_msq_messages chart");
        error("DISABLED: system.ipc_msq_size chart");
        error("DISABLED: kern.ipc.msg module");
        return 1;
    } else {
        static struct msqid_kernel *ipc_msq_data = ((void*)0);
        static int old_msgmni = 0;
        static int mib_msqids[3] = {0, 0, 0};

        if (unlikely(ipc_msq.msgmni != old_msgmni)) {
            ipc_msq_data = reallocz(ipc_msq_data, sizeof(struct msqid_kernel) * ipc_msq.msgmni);
            old_msgmni = ipc_msq.msgmni;
        }
        if (unlikely(
                GETSYSCTL_WSIZE("kern.ipc.msqids", mib_msqids, ipc_msq_data, sizeof(struct msqid_kernel) * ipc_msq.msgmni))) {
            error("DISABLED: system.ipc_msq_queues chart");
            error("DISABLED: system.ipc_msq_messages chart");
            error("DISABLED: system.ipc_msq_size chart");
            error("DISABLED: kern.ipc.msg module");
            return 1;
        } else {
            int i;

            for (i = 0; i < ipc_msq.msgmni; i++) {
                if (unlikely(ipc_msq_data[i].u.msg_qbytes != 0)) {
                    ipc_msq.queues += 1;
                    ipc_msq.messages += ipc_msq_data[i].u.msg_qnum;
                    ipc_msq.usedsize += ipc_msq_data[i].u.msg_cbytes;
                    ipc_msq.allocsize += ipc_msq_data[i].u.msg_qbytes;
                }
            }



            static RRDSET *st_queues = ((void*)0), *st_messages = ((void*)0), *st_size = ((void*)0);
            static RRDDIM *rd_queues = ((void*)0), *rd_messages = ((void*)0), *rd_allocated = ((void*)0), *rd_used = ((void*)0);

            if (unlikely(!st_queues)) {
                st_queues = rrdset_create_localhost(
                        "system",
                        "ipc_msq_queues",
                        ((void*)0),
                        "ipc message queues",
                        ((void*)0),
                        "Number of IPC Message Queues",
                        "queues",
                        "freebsd.plugin",
                        "kern.ipc.msq",
                        NETDATA_CHART_PRIO_SYSTEM_IPC_MSQ_QUEUES,
                        update_every,
                        RRDSET_TYPE_AREA
                );

                rd_queues = rrddim_add(st_queues, "queues", ((void*)0), 1, 1, RRD_ALGORITHM_ABSOLUTE);
            }
            else rrdset_next(st_queues);

            rrddim_set_by_pointer(st_queues, rd_queues, ipc_msq.queues);
            rrdset_done(st_queues);



            if (unlikely(!st_messages)) {
                st_messages = rrdset_create_localhost(
                        "system",
                        "ipc_msq_messages",
                        ((void*)0),
                        "ipc message queues",
                        ((void*)0),
                        "Number of Messages in IPC Message Queues",
                        "messages",
                        "freebsd.plugin",
                        "kern.ipc.msq",
                        NETDATA_CHART_PRIO_SYSTEM_IPC_MSQ_MESSAGES,
                        update_every,
                        RRDSET_TYPE_AREA
                );

                rd_messages = rrddim_add(st_messages, "messages", ((void*)0), 1, 1, RRD_ALGORITHM_ABSOLUTE);
            }
            else rrdset_next(st_messages);

            rrddim_set_by_pointer(st_messages, rd_messages, ipc_msq.messages);
            rrdset_done(st_messages);



            if (unlikely(!st_size)) {
                st_size = rrdset_create_localhost(
                        "system",
                        "ipc_msq_size",
                        ((void*)0),
                        "ipc message queues",
                        ((void*)0),
                        "Size of IPC Message Queues",
                        "bytes",
                        "freebsd.plugin",
                        "kern.ipc.msq",
                        NETDATA_CHART_PRIO_SYSTEM_IPC_MSQ_SIZE,
                        update_every,
                        RRDSET_TYPE_LINE
                );

                rd_allocated = rrddim_add(st_size, "allocated", ((void*)0), 1, 1, RRD_ALGORITHM_ABSOLUTE);
                rd_used = rrddim_add(st_size, "used", ((void*)0), 1, 1, RRD_ALGORITHM_ABSOLUTE);
            }
            else rrdset_next(st_size);

            rrddim_set_by_pointer(st_size, rd_allocated, ipc_msq.allocsize);
            rrddim_set_by_pointer(st_size, rd_used, ipc_msq.usedsize);
            rrdset_done(st_size);
        }
    }

    return 0;
}
