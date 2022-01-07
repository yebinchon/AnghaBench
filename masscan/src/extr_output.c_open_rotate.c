
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int s_addr; } ;
struct sockaddr_in {int sin_family; int sin_port; TYPE_1__ sin_addr; int member_0; } ;
struct sockaddr {int dummy; } ;
struct TYPE_5__ {int fd; scalar_t__ port; int ip; } ;
struct Output {unsigned int is_append; scalar_t__ format; int is_virgin_file; TYPE_3__* funcs; TYPE_2__ redis; } ;
typedef int sin ;
typedef int ptrdiff_t ;
struct TYPE_6__ {int (* open ) (struct Output*,int *) ;} ;
typedef int SOCKET ;
typedef int FILE ;


 int AF_INET ;
 int LOG (int ,char*) ;
 scalar_t__ Output_Redis ;
 int SOCK_STREAM ;
 int connect (int ,struct sockaddr*,int) ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int htonl (int ) ;
 int htons (unsigned short) ;
 int is_tx_done ;
 int perror (char const*) ;
 int pixie_fopen_shareable (int **,char const*,unsigned int) ;
 scalar_t__ socket (int ,int ,int ) ;
 int stderr ;
 int * stdout ;
 int stub1 (struct Output*,int *) ;

__attribute__((used)) static FILE *
open_rotate(struct Output *out, const char *filename)
{
    FILE *fp = 0;
    unsigned is_append = out->is_append;
    int x;




    if (out->format == Output_Redis) {
        ptrdiff_t fd = out->redis.fd;
        if (fd < 1) {
            struct sockaddr_in sin = {0};
            fd = (ptrdiff_t)socket(AF_INET, SOCK_STREAM, 0);
            if (fd == -1) {
                LOG(0, "redis: socket() failed to create socket\n");
                exit(1);
            }
            sin.sin_addr.s_addr = htonl(out->redis.ip);
            sin.sin_port = htons((unsigned short)out->redis.port);
            sin.sin_family = AF_INET;
            x = connect((SOCKET)fd, (struct sockaddr*)&sin, sizeof(sin));
            if (x != 0) {
                LOG(0, "redis: connect() failed\n");
                perror("connect");
            }
            out->redis.fd = fd;
        }
        out->funcs->open(out, (FILE*)fd);

        return (FILE*)fd;
    }


    if (filename[0] == '-' && filename[1] == '\0')
        fp = stdout;




    if (fp == 0) {
        x = pixie_fopen_shareable(&fp, filename, is_append);
        if (x != 0 || fp == ((void*)0)) {
            fprintf(stderr, "out: could not open file for %s\n",
                    is_append?"appending":"writing");
            perror(filename);
            is_tx_done = 1;
            return ((void*)0);
        }
    }





    out->is_virgin_file = 1;

    return fp;
}
