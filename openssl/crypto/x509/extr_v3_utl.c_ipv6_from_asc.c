
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int total; int zero_pos; int zero_cnt; scalar_t__ tmp; } ;
typedef TYPE_1__ IPV6_STAT ;


 int CONF_parse_list (char const*,char,int ,int ,TYPE_1__*) ;
 int ipv6_cb ;
 int memcpy (unsigned char*,scalar_t__,int) ;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static int ipv6_from_asc(unsigned char *v6, const char *in)
{
    IPV6_STAT v6stat;
    v6stat.total = 0;
    v6stat.zero_pos = -1;
    v6stat.zero_cnt = 0;





    if (!CONF_parse_list(in, ':', 0, ipv6_cb, &v6stat))
        return 0;



    if (v6stat.zero_pos == -1) {

        if (v6stat.total != 16)
            return 0;
    } else {

        if (v6stat.total == 16)
            return 0;

        if (v6stat.zero_cnt > 3)
            return 0;

        else if (v6stat.zero_cnt == 3) {
            if (v6stat.total > 0)
                return 0;
        }

        else if (v6stat.zero_cnt == 2) {
            if ((v6stat.zero_pos != 0)
                && (v6stat.zero_pos != v6stat.total))
                return 0;
        } else

        {
            if ((v6stat.zero_pos == 0)
                || (v6stat.zero_pos == v6stat.total))
                return 0;
        }
    }



    if (v6stat.zero_pos >= 0) {

        memcpy(v6, v6stat.tmp, v6stat.zero_pos);

        memset(v6 + v6stat.zero_pos, 0, 16 - v6stat.total);

        if (v6stat.total != v6stat.zero_pos)
            memcpy(v6 + v6stat.zero_pos + 16 - v6stat.total,
                   v6stat.tmp + v6stat.zero_pos,
                   v6stat.total - v6stat.zero_pos);
    } else
        memcpy(v6, v6stat.tmp, 16);

    return 1;
}
