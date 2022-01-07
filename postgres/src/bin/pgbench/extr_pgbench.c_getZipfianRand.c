
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64 ;
typedef int RandomState ;


 int Assert (int) ;
 double MAX_ZIPFIAN_PARAM ;
 double MIN_ZIPFIAN_PARAM ;
 int computeIterativeZipfian (int *,int,double) ;

__attribute__((used)) static int64
getZipfianRand(RandomState *random_state, int64 min, int64 max, double s)
{
 int64 n = max - min + 1;


 Assert(MIN_ZIPFIAN_PARAM <= s && s <= MAX_ZIPFIAN_PARAM);

 return min - 1 + computeIterativeZipfian(random_state, n, s);
}
