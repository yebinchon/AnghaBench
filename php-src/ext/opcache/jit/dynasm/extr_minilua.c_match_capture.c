
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char const* src_end; TYPE_1__* capture; } ;
struct TYPE_5__ {size_t len; int init; } ;
typedef TYPE_2__ MatchState ;


 int check_capture (TYPE_2__*,int) ;
 scalar_t__ memcmp (int ,char const*,size_t) ;

__attribute__((used)) static const char*match_capture(MatchState*ms,const char*s,int l){
size_t len;
l=check_capture(ms,l);
len=ms->capture[l].len;
if((size_t)(ms->src_end-s)>=len&&
memcmp(ms->capture[l].init,s,len)==0)
return s+len;
else return ((void*)0);
}
