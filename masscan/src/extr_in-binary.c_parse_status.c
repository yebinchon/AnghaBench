
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Output {unsigned char when_scan_started; } ;
struct MasscanRecord {unsigned char timestamp; unsigned char ip; unsigned char port; unsigned char reason; unsigned char ttl; int ip_proto; int mac; } ;
typedef enum PortStatus { ____Placeholder_PortStatus } PortStatus ;


 int memcpy (int ,unsigned char const*,int) ;
 int memset (int ,int ,int) ;
 int output_report_status (struct Output*,unsigned char,int,unsigned char,int,int,unsigned char,unsigned char,int ) ;

__attribute__((used)) static void
parse_status(struct Output *out,
        enum PortStatus status,
        const unsigned char *buf, size_t buf_length)
{
    struct MasscanRecord record;

    if (buf_length < 12)
        return;


    record.timestamp = buf[0]<<24 | buf[1]<<16 | buf[2]<<8 | buf[3];
    record.ip = buf[4]<<24 | buf[5]<<16 | buf[6]<<8 | buf[7];
    record.port = buf[8]<<8 | buf[9];
    record.reason = buf[10];
    record.ttl = buf[11];


    if (record.ip == 0 && buf_length >= 12+6)
        memcpy(record.mac, buf+12, 6);
    else
        memset(record.mac, 0, 6);

    if (out->when_scan_started == 0)
        out->when_scan_started = record.timestamp;

    switch (record.port) {
    case 53:
    case 123:
    case 137:
    case 161:
        record.ip_proto = 17;
        break;
    case 36422:
    case 36412:
    case 2905:
        record.ip_proto = 132;
        break;
    default:
        record.ip_proto = 6;
        break;
    }




    output_report_status(out,
                    record.timestamp,
                    status,
                    record.ip,
                    record.ip_proto,
                    record.port,
                    record.reason,
                    record.ttl,
                    record.mac);

}
