
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ProtocolState {int dummy; } ;
struct InteractiveData {int dummy; } ;
struct BannerOutput {int dummy; } ;
struct Banner1 {int dummy; } ;
typedef int pstate ;


 int PROTO_TELNET ;
 struct Banner1* banner1_create () ;
 int banner1_destroy (struct Banner1*) ;
 int banout_init (struct BannerOutput*) ;
 int banout_is_contains (struct BannerOutput*,int ,char const*) ;
 int banout_release (struct BannerOutput*) ;
 int memset (struct ProtocolState*,int ,int) ;
 int printf (char*,char const*) ;
 int strlen (char const*) ;
 int telnet_parse (struct Banner1*,int ,struct ProtocolState*,unsigned char const*,int ,struct BannerOutput*,struct InteractiveData*) ;

__attribute__((used)) static int
telnet_selftest_item(const char *input, const char *output)
{
    struct Banner1 *banner1;
    struct ProtocolState pstate[1];
    struct BannerOutput banout1[1];
    struct InteractiveData more;
    int x;




    banner1 = banner1_create();
    banout_init(banout1);
    memset(&pstate[0], 0, sizeof(pstate[0]));




    telnet_parse(banner1,
                 0,
                 pstate,
                 (const unsigned char *)input,
                 strlen(input),
                 banout1,
                 &more
                 );





    x = banout_is_contains(banout1, PROTO_TELNET, output);
    if (x == 0)
        printf("telnet parser failure: %s\n", output);
    banner1_destroy(banner1);
    banout_release(banout1);

    return (x==0)?1:0;
}
