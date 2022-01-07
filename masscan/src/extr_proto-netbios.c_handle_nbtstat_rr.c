
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct Output {int dummy; } ;
typedef int banner ;


 int PROTO_NBTSTAT ;
 int append_char (unsigned char*,int,unsigned int*,char) ;
 int append_name (unsigned char*,int,unsigned int*,unsigned char const*) ;
 int output_report_banner (struct Output*,int ,unsigned int,int,unsigned int,int ,unsigned int,unsigned char*,unsigned int) ;

__attribute__((used)) static unsigned
handle_nbtstat_rr(struct Output *out, time_t timestamp, unsigned ttl,
                  const unsigned char *px, unsigned length,
                  unsigned ip_them, unsigned port_them)
{
    unsigned char banner[65536];
    unsigned banner_length = 0;
    unsigned offset = 0;
    unsigned name_count;

    if (offset >= length)
        return 0;
    name_count = px[offset++];


    while (offset + 18 <= length && name_count) {
        append_name(banner, sizeof(banner), &banner_length, &px[offset]);
        offset += 18;
        name_count--;
    }


    {
        unsigned i;

        for (i=0; i<6; i++) {
            if (offset + i < length) {
                unsigned char c = px[offset];
                append_char(banner, sizeof(banner), &banner_length, "0123456789ABCDEF"[c>>4]);
                append_char(banner, sizeof(banner), &banner_length, "0123456789ABCDEF"[c&0xF]);
                if (i < 5)
                    append_char(banner, sizeof(banner), &banner_length, '-');
            }
        }
    }


    output_report_banner(
            out, timestamp,
            ip_them, 17, port_them,
            PROTO_NBTSTAT,
            ttl,
            banner, banner_length);
    return 0;
}
