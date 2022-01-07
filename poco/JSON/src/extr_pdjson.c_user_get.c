
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* get ) (int ) ;int ptr; } ;
struct TYPE_4__ {TYPE_1__ user; } ;
struct json_source {TYPE_2__ source; } ;


 int stub1 (int ) ;

__attribute__((used)) static int user_get(struct json_source *json)
{
    return json->source.user.get(json->source.user.ptr);
}
