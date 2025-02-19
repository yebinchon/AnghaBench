
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ProtocolState {int dummy; } ;
struct InteractiveData {int dummy; } ;
struct BannerOutput {int dummy; } ;
struct Banner1 {int dummy; } ;
typedef int state ;


 int PROTO_SMB ;
 struct Banner1* banner1_create () ;
 int banner1_destroy (struct Banner1*) ;
 int banout_init (struct BannerOutput*) ;
 int banout_is_contains (struct BannerOutput*,int ,char const*) ;
 int banout_release (struct BannerOutput*) ;
 int memset (struct ProtocolState*,int ,int) ;
 int printf (char*,char const*) ;
 int smb_parse_record (struct Banner1*,int ,struct ProtocolState*,unsigned char const*,size_t,struct BannerOutput*,struct InteractiveData*) ;

__attribute__((used)) static int
smb_do_test(const char *substring, const unsigned char *packet_bytes, size_t length)
{
    struct Banner1 *banner1;
    struct ProtocolState state[1];
    struct BannerOutput banout1[1];
    struct InteractiveData more;
    int x;

    banner1 = banner1_create();
    banout_init(banout1);
    memset(&state[0], 0, sizeof(state[0]));

    smb_parse_record(banner1,
                     0,
                     state,
                     packet_bytes,
                     length,
                     banout1,
                     &more);
    x = banout_is_contains(banout1, PROTO_SMB, substring);
    if (x == 0)
        printf("smb parser failure: %s\n", substring);
    banner1_destroy(banner1);
    banout_release(banout1);

    return x?0:1;
}
