
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mg_connection {int dummy; } ;
struct TYPE_4__ {int p; scalar_t__ len; } ;
struct http_message {TYPE_2__ body; } ;
struct TYPE_3__ {char* setting1; char* setting2; char* setting3; } ;


 int mg_get_http_var (TYPE_2__*,char*,char*,int) ;
 int mg_printf (struct mg_connection*,char*,unsigned long,int,int ) ;
 int printf (char*,char*,char*,char*) ;
 TYPE_1__ s_settings ;

__attribute__((used)) static void handle_save(struct mg_connection *nc, struct http_message *hm) {

  mg_get_http_var(&hm->body, "setting1", s_settings.setting1,
                  sizeof(s_settings.setting1));
  mg_get_http_var(&hm->body, "setting2", s_settings.setting2,
                  sizeof(s_settings.setting2));
  mg_get_http_var(&hm->body, "setting3", s_settings.setting3,
                  sizeof(s_settings.setting3));

  printf("Settings updated to '%s' '%s' '%s'\n", s_settings.setting1,
         s_settings.setting2, s_settings.setting3);

  mg_printf(nc, "HTTP/1.1 200 OK\r\nContent-Length: %lu\r\n\r\n%.*s",
            (unsigned long) hm->body.len, (int) hm->body.len, hm->body.p);
}
