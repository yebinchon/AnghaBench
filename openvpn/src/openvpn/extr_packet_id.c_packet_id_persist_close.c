
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_id_persist {int filename; int fd; } ;


 int D_PID_PERSIST ;
 int M_ERRNO ;
 scalar_t__ close (int ) ;
 int msg (int,char*,int ) ;
 scalar_t__ packet_id_persist_enabled (struct packet_id_persist*) ;
 int packet_id_persist_init (struct packet_id_persist*) ;

void
packet_id_persist_close(struct packet_id_persist *p)
{
    if (packet_id_persist_enabled(p))
    {
        if (close(p->fd))
        {
            msg(D_PID_PERSIST | M_ERRNO, "Close error on --replay-persist file %s", p->filename);
        }
        packet_id_persist_init(p);
    }
}
