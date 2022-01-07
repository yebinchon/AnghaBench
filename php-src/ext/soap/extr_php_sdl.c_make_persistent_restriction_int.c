
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * sdlRestrictionIntPtr ;
typedef int sdlRestrictionInt ;


 int * malloc (int) ;

__attribute__((used)) static void make_persistent_restriction_int(void *data)
{
 sdlRestrictionIntPtr *rest = (sdlRestrictionIntPtr *)data;
 sdlRestrictionIntPtr prest = ((void*)0);

 prest = malloc(sizeof(sdlRestrictionInt));
 *prest = **rest;
 *rest = prest;
}
