
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Output {unsigned char when_scan_started; } ;
struct MasscanRecord {unsigned char timestamp; unsigned char ip; unsigned char ip_proto; unsigned char port; unsigned char app_proto; } ;


 int output_report_banner (struct Output*,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,int ,unsigned char*,unsigned int) ;

__attribute__((used)) static void
parse_banner4(struct Output *out, unsigned char *buf, size_t buf_length)
{
    struct MasscanRecord record;

    if (buf_length < 13)
        return;




    record.timestamp = buf[0]<<24 | buf[1]<<16 | buf[2]<<8 | buf[3];
    record.ip = buf[4]<<24 | buf[5]<<16 | buf[6]<<8 | buf[7];
    record.ip_proto = buf[8];
    record.port = buf[9]<<8 | buf[10];
    record.app_proto = buf[11]<<8 | buf[12];

    if (out->when_scan_started == 0)
        out->when_scan_started = record.timestamp;




    output_report_banner(
                out,
                record.timestamp,
                record.ip,
                record.ip_proto,
                record.port,
                record.app_proto,
                0,
                buf+13, (unsigned)buf_length-13
                );
}
