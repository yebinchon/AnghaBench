
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double CheckPointCompletionTarget ;
 int CheckPointSegments ;
 scalar_t__ ConvertToXSegs (int ,int ) ;
 int max_wal_size_mb ;
 int wal_segment_size ;

__attribute__((used)) static void
CalculateCheckpointSegments(void)
{
 double target;
 target = (double) ConvertToXSegs(max_wal_size_mb, wal_segment_size) /
  (1.0 + CheckPointCompletionTarget);


 CheckPointSegments = (int) target;

 if (CheckPointSegments < 1)
  CheckPointSegments = 1;
}
