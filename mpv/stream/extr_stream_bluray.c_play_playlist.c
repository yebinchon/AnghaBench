
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bluray_priv_s {int bd; } ;


 int bd_select_playlist (int ,int) ;

__attribute__((used)) inline static int play_playlist(struct bluray_priv_s *priv, int playlist)
{
    return bd_select_playlist(priv->bd, playlist);
}
