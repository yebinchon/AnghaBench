
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int quoted; int string; } ;
typedef TYPE_1__ HbaToken ;


 TYPE_1__* make_hba_token (int ,int ) ;

__attribute__((used)) static HbaToken *
copy_hba_token(HbaToken *in)
{
 HbaToken *out = make_hba_token(in->string, in->quoted);

 return out;
}
