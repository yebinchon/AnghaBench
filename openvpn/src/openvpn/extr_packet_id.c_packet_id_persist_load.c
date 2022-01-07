
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packet_id_persist_file_image {int id; int time; } ;
struct packet_id_persist {int fd; char const* filename; int id_last_written; int id; int time_last_written; int time; } ;
struct gc_arena {int dummy; } ;
typedef int ssize_t ;
typedef int image ;


 int D_PID_PERSIST ;
 int D_PID_PERSIST_DEBUG ;
 int LOCK_EX ;
 int LOCK_NB ;
 int M_ERR ;
 int M_ERRNO ;
 int O_BINARY ;
 int O_CREAT ;
 int O_RDWR ;
 int S_IRUSR ;
 int S_IWUSR ;
 int dmsg (int ,char*,char const*,int ) ;
 scalar_t__ flock (int,int) ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int msg (int,char*,char const*) ;
 int packet_id_persist_enabled (struct packet_id_persist*) ;
 int packet_id_persist_print (struct packet_id_persist*,struct gc_arena*) ;
 int platform_open (char const*,int,int) ;
 int read (int,struct packet_id_persist_file_image*,int) ;

void
packet_id_persist_load(struct packet_id_persist *p, const char *filename)
{
    struct gc_arena gc = gc_new();
    if (!packet_id_persist_enabled(p))
    {

        p->fd = platform_open(filename,
                              O_CREAT | O_RDWR | O_BINARY,
                              S_IRUSR | S_IWUSR);
        if (p->fd == -1)
        {
            msg(D_PID_PERSIST | M_ERRNO,
                "Cannot open --replay-persist file %s for read/write",
                filename);
        }
        else
        {
            struct packet_id_persist_file_image image;
            ssize_t n;
            p->filename = filename;
            n = read(p->fd, &image, sizeof(image));
            if (n == sizeof(image))
            {
                p->time = p->time_last_written = image.time;
                p->id = p->id_last_written = image.id;
                dmsg(D_PID_PERSIST_DEBUG, "PID Persist Read from %s: %s",
                     p->filename, packet_id_persist_print(p, &gc));
            }
            else if (n == -1)
            {
                msg(D_PID_PERSIST | M_ERRNO,
                    "Read error on --replay-persist file %s",
                    p->filename);
            }
        }
    }
    gc_free(&gc);
}
