
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 char NUL ;
 int at_start ;
 int curchr ;
 scalar_t__ enc_utf8 ;
 scalar_t__ has_mbyte ;
 scalar_t__ mb_ptr2len (char*) ;
 int nextchr ;
 int prev_at_start ;
 int prevchr ;
 size_t prevchr_len ;
 int prevprevchr ;
 char* regparse ;
 scalar_t__ stub1 (char*) ;
 scalar_t__ utf_ptr2len (char*) ;

__attribute__((used)) static void
skipchr()
{

    if (*regparse == '\\')
 prevchr_len = 1;
    else
 prevchr_len = 0;
    if (regparse[prevchr_len] != NUL)
    {
     ++prevchr_len;
    }
    regparse += prevchr_len;
    prev_at_start = at_start;
    at_start = FALSE;
    prevprevchr = prevchr;
    prevchr = curchr;
    curchr = nextchr;
    nextchr = -1;
}
