
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sd_ass_priv {int num_seen_packets; scalar_t__* seen_packets; } ;
struct sd {struct sd_ass_priv* priv; } ;
typedef scalar_t__ int64_t ;


 int MP_TARRAY_INSERT_AT (struct sd_ass_priv*,scalar_t__*,int,int,scalar_t__) ;

__attribute__((used)) static bool check_packet_seen(struct sd *sd, int64_t pos)
{
    struct sd_ass_priv *priv = sd->priv;
    int a = 0;
    int b = priv->num_seen_packets;
    while (a < b) {
        int mid = a + (b - a) / 2;
        int64_t val = priv->seen_packets[mid];
        if (pos == val)
            return 1;
        if (pos > val) {
            a = mid + 1;
        } else {
            b = mid;
        }
    }
    MP_TARRAY_INSERT_AT(priv, priv->seen_packets, priv->num_seen_packets, a, pos);
    return 0;
}
