
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int v ;
typedef int uint32_t ;
typedef int u ;
struct TYPE_3__ {int * tables; int * state; } ;
typedef TYPE_1__ PHP_GOST_CTX ;


 int PASS (int ) ;
 int SHIFT12 (int *,int *,int *) ;
 int SHIFT16 (int *,int *,int *) ;
 int SHIFT61 (int *,int *) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static inline void Gost(PHP_GOST_CTX *context, uint32_t data[8])
{
 int i;
 uint32_t l, r, t, key[8], u[8], v[8], w[8], s[8], *h = context->state, *m = data;

 memcpy(u, context->state, sizeof(u));
 memcpy(v, data, sizeof(v));

 for (i = 0; i < 8; i += 2) {
  PASS(*context->tables);
 }
 SHIFT12(u, m, s);
 SHIFT16(h, v, u);
 SHIFT61(h, v);
}
