
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {scalar_t__ text_length; int text; } ;
typedef TYPE_1__ EDITSTATE ;


 scalar_t__ strlenW (int ) ;

__attribute__((used)) static inline UINT get_text_length(EDITSTATE *es)
{
    if(es->text_length == (UINT)-1)
        es->text_length = strlenW(es->text);
    return es->text_length;
}
