
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int JsonNode ;


 int JSON_ARRAY ;
 int * mknode (int ) ;

JsonNode *json_mkarray(void)
{
 return mknode(JSON_ARRAY);
}
