
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int float8 ;
typedef int Point ;
typedef int LINE ;


 int get_float8_nan () ;
 int line_construct (int *,int *,int ) ;
 int line_interpt_line (int *,int *,int *) ;
 int line_invsl (int *) ;
 int point_dt (int *,int *) ;

__attribute__((used)) static float8
line_closept_point(Point *result, LINE *line, Point *point)
{
 Point closept;
 LINE tmp;






 line_construct(&tmp, point, line_invsl(line));
 if (!line_interpt_line(&closept, &tmp, line))
 {
  if (result != ((void*)0))
   *result = *point;

  return get_float8_nan();
 }

 if (result != ((void*)0))
  *result = closept;

 return point_dt(&closept, point);
}
