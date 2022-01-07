
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tmplset ;
struct TemplateSet {TYPE_1__* pkts; } ;
struct TYPE_2__ {size_t proto; } ;


 size_t Proto_ICMP_ping ;
 size_t Proto_TCP ;
 size_t Proto_UDP ;
 int fprintf (int ,char*) ;
 int memset (struct TemplateSet*,int ,int) ;
 int stderr ;
 int template_packet_init (struct TemplateSet*,unsigned char const*,unsigned char const*,int ,int ,int,int ) ;

int
template_selftest(void)
{
    struct TemplateSet tmplset[1];
    int failures = 0;

    memset(tmplset, 0, sizeof(tmplset[0]));
    template_packet_init(
            tmplset,
            (const unsigned char*)"\x00\x11\x22\x33\x44\x55",
            (const unsigned char*)"\x66\x55\x44\x33\x22\x11",
            0,
            0,
            1,
            0
            );
    failures += tmplset->pkts[Proto_TCP].proto != Proto_TCP;
    failures += tmplset->pkts[Proto_UDP].proto != Proto_UDP;

    failures += tmplset->pkts[Proto_ICMP_ping].proto != Proto_ICMP_ping;



    if (failures)
        fprintf(stderr, "template: failed\n");
    return failures;
}
