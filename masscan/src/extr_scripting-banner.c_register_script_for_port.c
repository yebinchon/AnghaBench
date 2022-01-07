
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ProtocolParserStream {int dummy; } ;
struct TYPE_2__ {struct ProtocolParserStream** tcp; } ;
struct Banner1 {TYPE_1__ payloads; } ;


 int LOG (int ,char*,int) ;
 int banner_scripting ;

__attribute__((used)) static void
register_script_for_port(struct Banner1 *b, int port)
{
    LOG(0, "SCRIPTING: using port %d\n", port);
    b->payloads.tcp[port] = (struct ProtocolParserStream *)&banner_scripting;
}
