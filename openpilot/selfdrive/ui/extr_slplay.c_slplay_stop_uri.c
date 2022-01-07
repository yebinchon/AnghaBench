
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uri_player ;


 int * get_player_by_uri (char const*) ;
 int slplay_stop (int *,char**) ;

void slplay_stop_uri(const char* uri, char **error) {
  uri_player* player = get_player_by_uri(uri);
  slplay_stop(player, error);
}
