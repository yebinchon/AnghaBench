
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ltxtquery ;
typedef int ltree_gist ;


 int GETQUERY (int *) ;
 scalar_t__ LTG_ISALLTRUE (int *) ;
 scalar_t__ LTG_SIGN (int *) ;
 int checkcondition_bit ;
 int ltree_execute (int ,void*,int,int ) ;

__attribute__((used)) static bool
gist_qtxt(ltree_gist *key, ltxtquery *query)
{
 if (LTG_ISALLTRUE(key))
  return 1;

 return ltree_execute(
       GETQUERY(query),
       (void *) LTG_SIGN(key), 0,
       checkcondition_bit
  );
}
