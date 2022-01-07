
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int members; } ;
struct ECPGtype {char* struct_sizeof; TYPE_1__ u; int type_name; } ;
struct ECPGstruct_member {int dummy; } ;
typedef enum ECPGttype { ____Placeholder_ECPGttype } ECPGttype ;


 struct ECPGtype* ECPGmake_simple_type (int,int ,int ) ;
 int ECPGstruct_member_dup (struct ECPGstruct_member*) ;
 int mm_strdup (char*) ;

struct ECPGtype *
ECPGmake_struct_type(struct ECPGstruct_member *rm, enum ECPGttype type, char *type_name, char *struct_sizeof)
{
 struct ECPGtype *ne = ECPGmake_simple_type(type, mm_strdup("1"), 0);

 ne->type_name = mm_strdup(type_name);
 ne->u.members = ECPGstruct_member_dup(rm);
 ne->struct_sizeof = struct_sizeof;

 return ne;
}
