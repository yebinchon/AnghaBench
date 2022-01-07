
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sk_argument; } ;
typedef TYPE_1__* ScanKey ;
typedef int Point ;
typedef int Datum ;


 int DatumGetBoxP (int ) ;
 int * DatumGetPointP (int ) ;
 scalar_t__ palloc (int) ;
 double point_box_distance (int *,int ) ;
 double point_point_distance (int *,int *) ;

double *
spg_key_orderbys_distances(Datum key, bool isLeaf,
         ScanKey orderbys, int norderbys)
{
 int sk_num;
 double *distances = (double *) palloc(norderbys * sizeof(double)),
      *distance = distances;

 for (sk_num = 0; sk_num < norderbys; ++sk_num, ++orderbys, ++distance)
 {
  Point *point = DatumGetPointP(orderbys->sk_argument);

  *distance = isLeaf ? point_point_distance(point, DatumGetPointP(key))
   : point_box_distance(point, DatumGetBoxP(key));
 }

 return distances;
}
