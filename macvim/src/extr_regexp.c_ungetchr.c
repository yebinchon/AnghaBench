
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int at_start ;
 int curchr ;
 int nextchr ;
 int prev_at_start ;
 int prevchr ;
 scalar_t__ prevchr_len ;
 int prevprevchr ;
 int regparse ;

__attribute__((used)) static void
ungetchr()
{
    nextchr = curchr;
    curchr = prevchr;
    prevchr = prevprevchr;
    at_start = prev_at_start;
    prev_at_start = FALSE;



    regparse -= prevchr_len;
}
