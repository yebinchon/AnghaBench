
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RangeList {unsigned int count; struct Range* list; int member_0; } ;
struct Range {unsigned int begin; unsigned int end; } ;
struct Banner1 {int dummy; } ;


 int LOG (int ,char*,char const*) ;
 int exit (int) ;
 int rangelist_parse_ports (struct RangeList*,char const*,unsigned int*,int ) ;
 int register_script_for_port (struct Banner1*,unsigned int) ;

__attribute__((used)) static void
register_script_for_ports(struct Banner1 *b, const char *value)
{
    struct RangeList ports = {0};
    unsigned is_error = 0;
    unsigned i;

    rangelist_parse_ports(&ports, value, &is_error, 0);
    if (is_error) {
        LOG(0, "SCRIPTING: invalid 'setTcpPorts' range: %s\n", value);
        exit(1);
    }

    for (i=0; i<ports.count; i++) {
        struct Range *range = &ports.list[i];
        unsigned j;

        for (j=range->begin; j<=range->end; j++) {
            register_script_for_port(b, j);
        }
    }

}
