
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int bool_; } ;
typedef TYPE_1__ JsonNode ;


 int JSON_BOOL ;
 TYPE_1__* mknode (int ) ;

JsonNode *json_mkbool(bool b)
{
 JsonNode *ret = mknode(JSON_BOOL);
 ret->bool_ = b;
 return ret;
}
