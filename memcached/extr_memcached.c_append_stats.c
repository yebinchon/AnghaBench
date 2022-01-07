
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
typedef int protocol_binary_response_header ;
struct TYPE_6__ {scalar_t__ offset; scalar_t__ size; } ;
struct TYPE_7__ {scalar_t__ protocol; TYPE_1__ stats; } ;
typedef TYPE_2__ conn ;


 int append_ascii_stats (char const*,int const,char const*,int const,TYPE_2__*) ;
 int append_bin_stats (char const*,int const,char const*,int const,TYPE_2__*) ;
 int assert (int) ;
 scalar_t__ binary_prot ;
 int grow_stats_buf (TYPE_2__*,size_t) ;

__attribute__((used)) static void append_stats(const char *key, const uint16_t klen,
                  const char *val, const uint32_t vlen,
                  const void *cookie)
{

    if (klen == 0 && vlen > 0) {
        return ;
    }

    conn *c = (conn*)cookie;

    if (c->protocol == binary_prot) {
        size_t needed = vlen + klen + sizeof(protocol_binary_response_header);
        if (!grow_stats_buf(c, needed)) {
            return ;
        }
        append_bin_stats(key, klen, val, vlen, c);
    } else {
        size_t needed = vlen + klen + 10;
        if (!grow_stats_buf(c, needed)) {
            return ;
        }
        append_ascii_stats(key, klen, val, vlen, c);
    }

    assert(c->stats.offset <= c->stats.size);
}
