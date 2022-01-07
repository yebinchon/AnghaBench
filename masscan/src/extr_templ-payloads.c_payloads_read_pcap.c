
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RangeList {int count; int max; struct Range* list; int member_0; } ;
struct Range {int begin; int end; int member_0; } ;
struct PreprocessedInfo {int found; int transport_length; int transport_offset; int ip_protocol; int app_length; int app_offset; int port_dst; } ;
struct PcapFile {int dummy; } ;
struct PayloadsUDP {int dummy; } ;
typedef int buf ;





 int LOG (int,char*,char const*,...) ;
 int fprintf (int ,char*,char const*) ;
 unsigned int payloads_datagram_add (struct PayloadsUDP*,unsigned char*,int ,struct RangeList*,int,int ) ;
 int pcapfile_close (struct PcapFile*) ;
 struct PcapFile* pcapfile_openread (char const*) ;
 unsigned int pcapfile_readframe (struct PcapFile*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned char*,unsigned int) ;
 unsigned int preprocess_frame (unsigned char*,unsigned int,int,struct PreprocessedInfo*) ;
 int stderr ;

void
payloads_read_pcap(const char *filename,
                   struct PayloadsUDP *payloads,
                   struct PayloadsUDP *oproto_payloads)
{
    struct PcapFile *pcap;
    unsigned count = 0;

    LOG(2, "payloads:'%s': opening packet capture\n", filename);


    pcap = pcapfile_openread(filename);
    if (pcap == ((void*)0)) {
        fprintf(stderr, "payloads: can't read from file '%s'\n", filename);
        return;
    }






    for (;;) {
        unsigned x;
        unsigned captured_length;
        unsigned char buf[65536];
        struct PreprocessedInfo parsed;
        struct RangeList ports[1] = {{0}};
        struct Range range[1] = {{0}};




        {
            unsigned time_secs;
            unsigned time_usecs;
            unsigned original_length;

            x = pcapfile_readframe(pcap,
                    &time_secs, &time_usecs,
                    &original_length, &captured_length,
                    buf, (unsigned)sizeof(buf));
        }
        if (!x)
            break;




        x = preprocess_frame(buf, captured_length, 1, &parsed);
        if (!x)
            continue;




        switch (parsed.found) {
        case 130:
        case 128:



                ports->list = range;
                ports->count = 1;
                ports->max = 1;
                range->begin = parsed.port_dst;
                range->end = range->begin;





                count += payloads_datagram_add( payloads,
                                          buf + parsed.app_offset,
                                          parsed.app_length,
                                          ports,
                                          0x10000,
                                          0);
            break;
        case 129:



                ports->list = range;
                ports->count = 1;
                ports->max = 1;
                range->begin = parsed.ip_protocol;
                range->end = range->begin;





                count += payloads_datagram_add(oproto_payloads,
                                          buf + parsed.transport_offset,
                                          parsed.transport_length,
                                          ports,
                                          0x10000,
                                          0);
            break;
        default:
            continue;
        }

    }

    LOG(2, "payloads:'%s': imported %u unique payloads\n", filename, count);
    LOG(2, "payloads:'%s': closed packet capture\n", filename);
    pcapfile_close(pcap);
}
