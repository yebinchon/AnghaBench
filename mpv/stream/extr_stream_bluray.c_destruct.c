
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bluray_priv_s {int bd; scalar_t__ title_info; } ;


 int bd_close (int ) ;
 int bd_free_title_info (scalar_t__) ;

__attribute__((used)) static void destruct(struct bluray_priv_s *priv)
{
    if (priv->title_info)
        bd_free_title_info(priv->title_info);
    bd_close(priv->bd);
}
