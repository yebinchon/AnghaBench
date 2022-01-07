
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relids ;
typedef int Node ;


 int bms_free (int ) ;
 int bms_num_members (int ) ;
 int pull_varnos (int *) ;

int
NumRelids(Node *clause)
{
 Relids varnos = pull_varnos(clause);
 int result = bms_num_members(varnos);

 bms_free(varnos);
 return result;
}
