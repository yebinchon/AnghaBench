
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float INFINITY ;
 float LOG_OFFSET_DB ;
 float LOG_RANGE_DB ;
 float powf (float,float const) ;

__attribute__((used)) static float log_def_to_db(const float def)
{
 if (def >= 1.0f)
  return 0.0f;
 else if (def <= 0.0f)
  return -INFINITY;

 return -(LOG_RANGE_DB + LOG_OFFSET_DB) *
         powf((LOG_RANGE_DB + LOG_OFFSET_DB) / LOG_OFFSET_DB,
       -def) +
        LOG_OFFSET_DB;
}
