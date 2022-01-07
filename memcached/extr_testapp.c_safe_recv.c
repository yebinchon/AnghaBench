
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ssize_t ;
typedef size_t off_t ;
struct TYPE_3__ {int (* read ) (TYPE_1__*,char*,size_t) ;} ;


 scalar_t__ EINTR ;
 int abort () ;
 scalar_t__ allow_closed_read ;
 int assert (int) ;
 TYPE_1__* con ;
 scalar_t__ errno ;
 int fprintf (int ,char*,char*) ;
 int stderr ;
 char* strerror (scalar_t__) ;
 int stub1 (TYPE_1__*,char*,size_t) ;

__attribute__((used)) static bool safe_recv(void *buf, size_t len) {
    if (len == 0) {
        return 1;
    }
    off_t offset = 0;
    do {
        ssize_t nr = con->read(con, ((char*)buf) + offset, len - offset);
        if (nr == -1) {
            if (errno != EINTR) {
                fprintf(stderr, "Failed to read: %s\n", strerror(errno));
                abort();
            }
        } else {
            if (nr == 0 && allow_closed_read) {
                return 0;
            }
            assert(nr != 0);
            offset += nr;
        }
    } while (offset < len);

    return 1;
}
