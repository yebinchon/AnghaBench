
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mg_connection {int dummy; } ;
struct http_message {int body; } ;
struct TYPE_2__ {int setting2; int setting1; } ;


 int mg_get_http_var (int *,char*,int ,int) ;
 int mg_http_send_redirect (struct mg_connection*,int,int ,int ) ;
 int mg_mk_str (char*) ;
 TYPE_1__ s_settings ;

__attribute__((used)) static void handle_save(struct mg_connection *nc, struct http_message *hm) {

  mg_get_http_var(&hm->body, "setting1", s_settings.setting1,
                  sizeof(s_settings.setting1));
  mg_get_http_var(&hm->body, "setting2", s_settings.setting2,
                  sizeof(s_settings.setting2));


  mg_http_send_redirect(nc, 302, mg_mk_str("/"), mg_mk_str(((void*)0)));
}
