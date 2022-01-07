
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct json_source {int (* peek ) (struct json_source*) ;int position; } ;


 int stub1 (struct json_source*) ;

__attribute__((used)) static int buffer_get(struct json_source *source)
{
    int c = source->peek(source);
    source->position++;
    return c;
}
