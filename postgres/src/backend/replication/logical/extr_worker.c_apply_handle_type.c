
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;
typedef int LogicalRepTyp ;


 int logicalrep_read_typ (int ,int *) ;
 int logicalrep_typmap_update (int *) ;

__attribute__((used)) static void
apply_handle_type(StringInfo s)
{
 LogicalRepTyp typ;

 logicalrep_read_typ(s, &typ);
 logicalrep_typmap_update(&typ);
}
