
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int (* get ) (TYPE_2__*) ;} ;
struct TYPE_4__ {int lineno; TYPE_2__ source; } ;
typedef TYPE_1__ json_stream ;


 scalar_t__ json_isspace (int) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static int next(json_stream *json)
{
   int c;
   while (json_isspace(c = json->source.get(&json->source)))
       if (c == '\n')
           json->lineno++;
   return c;
}
