
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct MEMCACHEDSTUFF {int match; } ;
struct TYPE_3__ {struct MEMCACHEDSTUFF memcached; } ;
struct ProtocolState {unsigned int state; TYPE_1__ sub; } ;
typedef void const InteractiveData ;
struct BannerOutput {int dummy; } ;
typedef void Banner1 ;
struct TYPE_4__ {int pattern; } ;


 int AUTO_LEN ;





 int PROTO_MEMCACHED ;

 int UNUSEDPARM (void const*) ;
 int banout_append (struct BannerOutput*,int ,int ,int ) ;
 int banout_append_char (struct BannerOutput*,int ,unsigned char const) ;
 int isspace (unsigned char const) ;
 TYPE_2__* memcached_stats ;
 scalar_t__ sm_memcached_responses ;
 scalar_t__ sm_memcached_stats ;
 size_t smack_search_next (scalar_t__,int *,unsigned char const*,unsigned int*,unsigned int) ;

__attribute__((used)) static void
memcached_tcp_parse(
          const struct Banner1 *banner1,
          void *banner1_private,
          struct ProtocolState *pstate,
          const unsigned char *px, size_t length,
          struct BannerOutput *banout,
          struct InteractiveData *more)
{
    unsigned state = pstate->state;
    unsigned i;
    struct MEMCACHEDSTUFF *memcached = &pstate->sub.memcached;
    size_t id;

    UNUSEDPARM(banner1_private);
    UNUSEDPARM(banner1);
    UNUSEDPARM(more);

    if (sm_memcached_responses == 0)
        return;

    for (i=0; i<length; i++) {
        switch (state) {
            case 0:
                memcached->match = 0;

            case 1:
                id = smack_search_next(
                        sm_memcached_responses,
                        &memcached->match,
                        px, &i, (unsigned)length);
                i--;
                switch (id) {
                case 128:

                    break;
                case 132:
                    if (px[i] == '\n')
                        state = 2;
                    else
                        state = 100;
                    break;
                case 133:
                    state = 3;
                    break;
                default:
                    state = 2;
                }
                break;


            case 3:
                i = (unsigned)length;
                break;


            case 2:
                while (i < length && px[i] != '\n')
                    i++;
                if (px[i] == '\n')
                    state = 0;
                break;


            case 100:
            case 200:
                if (px[i] == '\n')
                    state = 0;
                else if (isspace(px[i]))
                    continue;
                else {
                    state++;
                    memcached->match = 0;
                    i--;
                }
                break;
            case 101:
                id = smack_search_next(
                        sm_memcached_stats,
                        &memcached->match,
                        px, &i, (unsigned)length);
                i--;
                switch (id) {
                case 128:

                    break;
                case 130:
                case 131:
                case 129:
                    banout_append(banout, PROTO_MEMCACHED, memcached_stats[id].pattern, AUTO_LEN);
                    if (px[i] == '\n')
                        state = 0;
                    else
                        state = 200;
                    banout_append_char(banout, PROTO_MEMCACHED, '=');
                    break;
                default:
                    if (px[i] == '\n')
                        state = 0;
                    else
                        state = 2;
                }
                break;

            case 201:
                if (px[i] == '\r')
                    continue;
                else if (px[i] == '\n') {
                    banout_append_char(banout, PROTO_MEMCACHED, ' ');
                    state = 0;
                    break;
                } else
                    banout_append_char(banout, PROTO_MEMCACHED, px[i]);
                break;
        }
    }
    pstate->state = state;
}
