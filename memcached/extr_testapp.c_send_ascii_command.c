
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ssize_t ;
typedef size_t off_t ;
struct TYPE_2__ {int (* write ) (void*,char const*,size_t) ;} ;


 scalar_t__ EINTR ;
 int abort () ;
 TYPE_1__* con ;
 scalar_t__ errno ;
 int fprintf (int ,char*,char*) ;
 int stderr ;
 char* strerror (scalar_t__) ;
 size_t strlen (char const*) ;
 int stub1 (void*,char const*,size_t) ;

__attribute__((used)) static void send_ascii_command(const char *buf) {
    off_t offset = 0;
    const char* ptr = buf;
    size_t len = strlen(buf);

    do {
        ssize_t nw = con->write((void*)con, ptr + offset, len - offset);
        if (nw == -1) {
            if (errno != EINTR) {
                fprintf(stderr, "Failed to write: %s\n", strerror(errno));
                abort();
            }
        } else {
            offset += nw;
        }
    } while (offset < len);
}
