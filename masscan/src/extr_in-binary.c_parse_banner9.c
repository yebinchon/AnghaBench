
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RangeList {int dummy; } ;
struct Output {unsigned char when_scan_started; } ;
struct MasscanRecord {unsigned char timestamp; unsigned char ip; unsigned char ip_proto; unsigned char port; unsigned char app_proto; unsigned char ttl; } ;


 int output_report_banner (struct Output*,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char*,unsigned int) ;
 int readscan_filter_pass (unsigned char,unsigned char,unsigned char,struct RangeList const*,struct RangeList const*,struct RangeList const*) ;

__attribute__((used)) static void
parse_banner9(struct Output *out, unsigned char *buf, size_t buf_length,
              const struct RangeList *ips,
              const struct RangeList *ports,
              const struct RangeList *btypes)
{
    struct MasscanRecord record;
    unsigned char *data = buf+14;
    size_t data_length = buf_length-14;

    if (buf_length < 14)
        return;




    record.timestamp = buf[0]<<24 | buf[1]<<16 | buf[2]<<8 | buf[3];
    record.ip = buf[4]<<24 | buf[5]<<16 | buf[6]<<8 | buf[7];
    record.ip_proto = buf[8];
    record.port = buf[9]<<8 | buf[10];
    record.app_proto = buf[11]<<8 | buf[12];
    record.ttl = buf[13];

    if (out->when_scan_started == 0)
        out->when_scan_started = record.timestamp;
    if (!readscan_filter_pass(record.ip, record.port, record.app_proto,
              ips, ports, btypes))
          return;




    output_report_banner(
                out,
                record.timestamp,
                record.ip,
                record.ip_proto,
                record.port,
                record.app_proto,
                record.ttl,
                data, (unsigned)data_length
                );
}
