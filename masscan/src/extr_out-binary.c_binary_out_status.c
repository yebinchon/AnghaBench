
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_2__ {size_t bytes_written; } ;
struct Output {TYPE_1__ rotate; } ;
typedef int FILE ;


 unsigned char Out_Arp2 ;
 unsigned char Out_Closed2 ;
 unsigned char Out_Open2 ;



 int UNUSEDPARM (struct Output*) ;
 int exit (int) ;
 size_t fwrite (unsigned char**,int,int,int *) ;
 int perror (char*) ;

__attribute__((used)) static void
binary_out_status(struct Output *out, FILE *fp, time_t timestamp,
    int status, unsigned ip, unsigned ip_proto, unsigned port, unsigned reason, unsigned ttl)
{
    unsigned char foo[256];
    size_t bytes_written;

    UNUSEDPARM(out);


    switch (status) {
    case 128:
        foo[0] = Out_Open2;
        break;
    case 129:
        foo[0] = Out_Closed2;
        break;
    case 130:
        foo[0] = Out_Arp2;
        break;
    default:
        return;
    }


    foo[1] = 13;


    foo[2] = (unsigned char)(timestamp>>24);
    foo[3] = (unsigned char)(timestamp>>16);
    foo[4] = (unsigned char)(timestamp>> 8);
    foo[5] = (unsigned char)(timestamp>> 0);

    foo[6] = (unsigned char)(ip>>24);
    foo[7] = (unsigned char)(ip>>16);
    foo[8] = (unsigned char)(ip>> 8);
    foo[9] = (unsigned char)(ip>> 0);

    foo[10] = (unsigned char)(ip_proto);

    foo[11] = (unsigned char)(port>>8);
    foo[12] = (unsigned char)(port>>0);

    foo[13] = (unsigned char)reason;
    foo[14] = (unsigned char)ttl;



    bytes_written = fwrite(&foo, 1, 15, fp);
    if (bytes_written != 15) {
        perror("output");
        exit(1);
    }
    out->rotate.bytes_written += bytes_written;
}
