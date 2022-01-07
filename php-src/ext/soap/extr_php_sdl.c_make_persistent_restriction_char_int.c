
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* sdlRestrictionCharPtr ;
typedef int sdlRestrictionChar ;
struct TYPE_5__ {int fixed; int value; } ;


 TYPE_1__* malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int strdup (int ) ;

__attribute__((used)) static void make_persistent_restriction_char_int(sdlRestrictionCharPtr *rest)
{
 sdlRestrictionCharPtr prest = ((void*)0);

 prest = malloc(sizeof(sdlRestrictionChar));
 memset(prest, 0, sizeof(sdlRestrictionChar));
 prest->value = strdup((*rest)->value);
 prest->fixed = (*rest)->fixed;
 *rest = prest;
}
