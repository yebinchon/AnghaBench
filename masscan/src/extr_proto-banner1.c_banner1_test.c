
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct PreprocessedInfo {int dummy; } ;
struct PcapFile {int dummy; } ;
typedef int px ;


 int fprintf (int ,char*,char const*) ;
 int pcapfile_close (struct PcapFile*) ;
 unsigned int pcapfile_datalink (struct PcapFile*) ;
 struct PcapFile* pcapfile_openread (char const*) ;
 int pcapfile_readframe (struct PcapFile*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned char*,int) ;
 unsigned int preprocess_frame (unsigned char*,unsigned int,unsigned int,struct PreprocessedInfo*) ;
 int stderr ;

void
banner1_test(const char *filename)
{
    struct PcapFile *cap;
    unsigned link_type;

    cap = pcapfile_openread(filename);
    if (cap == ((void*)0)) {
        fprintf(stderr, "%s: can't open capture file\n", filename);
        return;
    }

    link_type = pcapfile_datalink(cap);

    for (;;) {
        int packets_read;
        unsigned secs;
        unsigned usecs;
        unsigned origlength;
        unsigned length;
        unsigned char px[65536];
        struct PreprocessedInfo parsed;
        unsigned x;


        packets_read = pcapfile_readframe(
                    cap,
                    &secs, &usecs,
                    &origlength, &length,
                    px, sizeof(px));
        if (packets_read == 0)
            break;


        x = preprocess_frame(px, length, link_type, &parsed);
        if (x == 0)
            continue;

    }

    pcapfile_close(cap);
}
