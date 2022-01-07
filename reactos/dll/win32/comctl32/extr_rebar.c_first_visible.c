
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int REBAR_INFO ;


 int next_visible (int const*,int) ;

__attribute__((used)) static int first_visible(const REBAR_INFO *infoPtr)
{
    return next_visible(infoPtr, -1);
}
