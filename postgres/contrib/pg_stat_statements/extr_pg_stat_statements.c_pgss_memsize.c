
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgssSharedState ;
typedef int pgssEntry ;
typedef int Size ;


 int MAXALIGN (int) ;
 int add_size (int ,int ) ;
 int hash_estimate_size (int ,int) ;
 int pgss_max ;

__attribute__((used)) static Size
pgss_memsize(void)
{
 Size size;

 size = MAXALIGN(sizeof(pgssSharedState));
 size = add_size(size, hash_estimate_size(pgss_max, sizeof(pgssEntry)));

 return size;
}
