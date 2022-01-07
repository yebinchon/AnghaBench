
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ LOG_OFFSET_DB ;
 float LOG_OFFSET_VAL ;
 float LOG_RANGE_VAL ;
 float log10f (scalar_t__) ;

__attribute__((used)) static float log_db_to_def(const float db)
{
 if (db >= 0.0f)
  return 1.0f;
 else if (db <= -96.0f)
  return 0.0f;

 return (-log10f(-db + LOG_OFFSET_DB) - LOG_RANGE_VAL) /
        (LOG_OFFSET_VAL - LOG_RANGE_VAL);
}
