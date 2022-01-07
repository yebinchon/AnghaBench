
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t bytes_written; } ;
struct Output {TYPE_1__ rotate; scalar_t__ when_scan_started; } ;
typedef int FILE ;


 int UNUSEDPARM (struct Output*) ;
 int exit (int) ;
 size_t fwrite (char*,int,int,int *) ;
 int memset (char*,int ,int) ;
 int perror (char*) ;
 int sprintf_s (char*,int,char*,unsigned int) ;

__attribute__((used)) static void
binary_out_open(struct Output *out, FILE *fp)
{
    char firstrecord[2+'a'];
    size_t bytes_written;

    UNUSEDPARM(out);


    memset(firstrecord, 0, 2+'a');
    sprintf_s(firstrecord, 2+'a', "masscan/1.1.02\ns:%u\n",
        (unsigned)out->when_scan_started);
    bytes_written = fwrite(firstrecord, 1, 2+'a', fp);
    if (bytes_written != 2+'a') {
        perror("output");
        exit(1);
    }

    out->rotate.bytes_written += bytes_written;
}
