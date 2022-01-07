
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int opt_cache; } ;
struct mp_filter {struct priv* priv; } ;


 int feed_packet (struct priv*) ;
 int m_config_cache_update (int ) ;
 int read_frame (struct priv*) ;

__attribute__((used)) static void process(struct mp_filter *f)
{
    struct priv *p = f->priv;
    m_config_cache_update(p->opt_cache);

    feed_packet(p);
    read_frame(p);
}
