
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ cipher; } ;
typedef TYPE_1__ PX_Combo ;


 int px_cipher_free (scalar_t__) ;
 int px_free (TYPE_1__*) ;
 int px_memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void
combo_free(PX_Combo *cx)
{
 if (cx->cipher)
  px_cipher_free(cx->cipher);
 px_memset(cx, 0, sizeof(*cx));
 px_free(cx);
}
