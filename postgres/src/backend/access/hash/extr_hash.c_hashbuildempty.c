
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;


 int INIT_FORKNUM ;
 int _hash_init (int ,int ,int ) ;

void
hashbuildempty(Relation index)
{
 _hash_init(index, 0, INIT_FORKNUM);
}
