
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* string_; } ;
typedef TYPE_1__ JsonNode ;


 int JSON_STRING ;
 TYPE_1__* mknode (int ) ;

__attribute__((used)) static JsonNode *mkstring(char *s)
{
 JsonNode *ret = mknode(JSON_STRING);
 ret->string_ = s;
 return ret;
}
