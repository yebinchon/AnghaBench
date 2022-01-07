
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* entry; } ;
typedef TYPE_2__ _lsapi_activate_user_ini_ctx ;
struct TYPE_3__ {int user_config; } ;


 int PG (int ) ;
 int php_parse_user_ini_file (char*,int ,int *) ;
 int user_ini_filename ;

__attribute__((used)) static void walk_down_the_path_callback(char* begin,
                                        char* end,
                                        void* data)
{
    _lsapi_activate_user_ini_ctx *ctx = data;
    char tmp = end[0];
    end[0] = 0;
    php_parse_user_ini_file(begin, PG(user_ini_filename), &ctx->entry->user_config);
    end[0] = tmp;
}
