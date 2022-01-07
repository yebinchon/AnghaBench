
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* key; } ;
struct TYPE_5__ {int len; } ;
typedef TYPE_2__ FormatNode ;


 int from_char_parse_int_len (int*,char**,int ,TYPE_2__*,int*) ;

__attribute__((used)) static int
from_char_parse_int(int *dest, char **src, FormatNode *node, bool *have_error)
{
 return from_char_parse_int_len(dest, src, node->key->len, node, have_error);
}
