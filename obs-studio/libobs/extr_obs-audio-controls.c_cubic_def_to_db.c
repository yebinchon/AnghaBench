
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float INFINITY ;
 float mul_to_db (float const) ;

__attribute__((used)) static float cubic_def_to_db(const float def)
{
 if (def == 1.0f)
  return 0.0f;
 else if (def <= 0.0f)
  return -INFINITY;

 return mul_to_db(def * def * def);
}
