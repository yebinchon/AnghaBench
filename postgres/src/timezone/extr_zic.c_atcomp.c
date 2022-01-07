
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zic_t ;
struct attype {scalar_t__ at; } ;



__attribute__((used)) static int
atcomp(const void *avp, const void *bvp)
{
 const zic_t a = ((const struct attype *) avp)->at;
 const zic_t b = ((const struct attype *) bvp)->at;

 return (a < b) ? -1 : (a > b);
}
