
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * uri; } ;
typedef TYPE_1__ uri_player ;


 TYPE_1__* players ;
 scalar_t__ strcmp (int *,char const*) ;

uri_player* get_player_by_uri(const char* uri) {
  for (uri_player *s = players; s->uri != ((void*)0); s++) {
    if (strcmp(s->uri, uri) == 0) {
      return s;
    }
  }

  return ((void*)0);
}
