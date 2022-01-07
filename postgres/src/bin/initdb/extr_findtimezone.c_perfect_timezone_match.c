
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tztry {scalar_t__ n_test_times; } ;


 scalar_t__ score_timezone (char const*,struct tztry*) ;

__attribute__((used)) static bool
perfect_timezone_match(const char *tzname, struct tztry *tt)
{
 return (score_timezone(tzname, tt) == tt->n_test_times);
}
