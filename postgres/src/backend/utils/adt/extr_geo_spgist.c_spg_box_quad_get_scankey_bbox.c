
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int boundbox; } ;
struct TYPE_4__ {int sk_subtype; int sk_argument; int sk_strategy; } ;
typedef TYPE_1__* ScanKey ;
typedef int BOX ;



 int * DatumGetBoxP (int ) ;
 TYPE_3__* DatumGetPolygonP (int ) ;
 int ERROR ;

 int elog (int ,char*,int) ;
 int is_bounding_box_test_exact (int ) ;

__attribute__((used)) static BOX *
spg_box_quad_get_scankey_bbox(ScanKey sk, bool *recheck)
{
 switch (sk->sk_subtype)
 {
  case 129:
   return DatumGetBoxP(sk->sk_argument);

  case 128:
   if (recheck && !is_bounding_box_test_exact(sk->sk_strategy))
    *recheck = 1;
   return &DatumGetPolygonP(sk->sk_argument)->boundbox;

  default:
   elog(ERROR, "unrecognized scankey subtype: %d", sk->sk_subtype);
   return ((void*)0);
 }
}
