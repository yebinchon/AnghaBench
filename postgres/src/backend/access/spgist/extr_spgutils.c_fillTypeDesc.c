
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int attbyval; int attlen; int type; } ;
typedef TYPE_1__ SpGistTypeDesc ;
typedef int Oid ;


 int get_typlenbyval (int ,int *,int *) ;

__attribute__((used)) static void
fillTypeDesc(SpGistTypeDesc *desc, Oid type)
{
 desc->type = type;
 get_typlenbyval(type, &desc->attlen, &desc->attbyval);
}
