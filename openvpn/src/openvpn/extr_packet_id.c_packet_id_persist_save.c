
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_id_persist_file_image {scalar_t__ time; scalar_t__ id; } ;
struct packet_id_persist {scalar_t__ time; scalar_t__ time_last_written; scalar_t__ id; scalar_t__ id_last_written; int filename; int fd; } ;
struct gc_arena {int dummy; } ;
typedef int ssize_t ;
typedef scalar_t__ off_t ;
typedef int image ;


 int D_PID_PERSIST ;
 int D_PID_PERSIST_DEBUG ;
 int M_ERRNO ;
 int SEEK_SET ;
 int dmsg (int ,char*,int ,int ) ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 scalar_t__ lseek (int ,scalar_t__,int ) ;
 int msg (int,char*,int ) ;
 scalar_t__ packet_id_persist_enabled (struct packet_id_persist*) ;
 int packet_id_persist_print (struct packet_id_persist*,struct gc_arena*) ;
 int write (int ,struct packet_id_persist_file_image*,int) ;

void
packet_id_persist_save(struct packet_id_persist *p)
{
    if (packet_id_persist_enabled(p) && p->time && (p->time != p->time_last_written
                                                    || p->id != p->id_last_written))
    {
        struct packet_id_persist_file_image image;
        ssize_t n;
        off_t seek_ret;
        struct gc_arena gc = gc_new();

        image.time = p->time;
        image.id = p->id;
        seek_ret = lseek(p->fd, (off_t)0, SEEK_SET);
        if (seek_ret == (off_t)0)
        {
            n = write(p->fd, &image, sizeof(image));
            if (n == sizeof(image))
            {
                p->time_last_written = p->time;
                p->id_last_written = p->id;
                dmsg(D_PID_PERSIST_DEBUG, "PID Persist Write to %s: %s",
                     p->filename, packet_id_persist_print(p, &gc));
            }
            else
            {
                msg(D_PID_PERSIST | M_ERRNO,
                    "Cannot write to --replay-persist file %s",
                    p->filename);
            }
        }
        else
        {
            msg(D_PID_PERSIST | M_ERRNO,
                "Cannot seek to beginning of --replay-persist file %s",
                p->filename);
        }
        gc_free(&gc);
    }
}
