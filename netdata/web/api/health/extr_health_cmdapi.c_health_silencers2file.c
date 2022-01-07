
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ len; char* buffer; } ;
typedef int FILE ;
typedef TYPE_1__ BUFFER ;


 int errno ;
 int error (char*,int ,char*) ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int fprintf (int *,char*,char*) ;
 int info (char*,int ) ;
 int silencers_filename ;
 char* strerror (int ) ;

void health_silencers2file(BUFFER *wb) {
    if (wb->len == 0) return;

    FILE *fd = fopen(silencers_filename, "wb");
    if(fd) {
        size_t written = (size_t)fprintf(fd, "%s", wb->buffer) ;
        if (written == wb->len ) {
            info("Silencer changes written to %s", silencers_filename);
        }
        fclose(fd);
        return;
    }
    error("Silencer changes could not be written to %s. Error %s", silencers_filename, strerror(errno));
}
