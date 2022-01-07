
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct ECPGtype* element; } ;
struct ECPGtype {TYPE_1__ u; } ;


 struct ECPGtype* ECPGmake_simple_type (int ,char*,int ) ;
 int ECPGt_array ;

struct ECPGtype *
ECPGmake_array_type(struct ECPGtype *type, char *size)
{
 struct ECPGtype *ne = ECPGmake_simple_type(ECPGt_array, size, 0);

 ne->u.element = type;

 return ne;
}
