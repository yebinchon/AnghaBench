
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int at_start ;
 int prev_at_start ;
 int prevchr ;
 int prevprevchr ;
 int skipchr () ;

__attribute__((used)) static void
skipchr_keepstart()
{
    int as = prev_at_start;
    int pr = prevchr;
    int prpr = prevprevchr;

    skipchr();
    at_start = as;
    prevchr = pr;
    prevprevchr = prpr;
}
