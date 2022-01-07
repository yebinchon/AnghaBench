
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float const INFINITY ;
 float cbrtf (int ) ;
 int db_to_mul (float const) ;

__attribute__((used)) static float cubic_db_to_def(const float db)
{
 if (db == 0.0f)
  return 1.0f;
 else if (db == -INFINITY)
  return 0.0f;

 return cbrtf(db_to_mul(db));
}
