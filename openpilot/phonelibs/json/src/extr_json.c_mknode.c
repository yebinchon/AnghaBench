
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tag; } ;
typedef int JsonTag ;
typedef TYPE_1__ JsonNode ;


 scalar_t__ calloc (int,int) ;
 int out_of_memory () ;

__attribute__((used)) static JsonNode *mknode(JsonTag tag)
{
 JsonNode *ret = (JsonNode*) calloc(1, sizeof(JsonNode));
 if (ret == ((void*)0))
  out_of_memory();
 ret->tag = tag;
 return ret;
}
