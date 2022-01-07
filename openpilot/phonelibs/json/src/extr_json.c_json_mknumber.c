
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {double number_; } ;
typedef TYPE_1__ JsonNode ;


 int JSON_NUMBER ;
 TYPE_1__* mknode (int ) ;

JsonNode *json_mknumber(double n)
{
 JsonNode *node = mknode(JSON_NUMBER);
 node->number_ = n;
 return node;
}
