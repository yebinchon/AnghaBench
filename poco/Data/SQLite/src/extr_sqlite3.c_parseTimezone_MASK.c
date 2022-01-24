#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int tz; int tzSet; } ;
typedef  TYPE_1__ DateTime ;

/* Variables and functions */
 int FUNC0 (char const*,char*,int*,int*) ; 
 scalar_t__ FUNC1 (char const) ; 

__attribute__((used)) static int FUNC2(const char *zDate, DateTime *p){
  int sgn = 0;
  int nHr, nMn;
  int c;
  while( FUNC1(*zDate) ){ zDate++; }
  p->tz = 0;
  c = *zDate;
  if( c=='-' ){
    sgn = -1;
  }else if( c=='+' ){
    sgn = +1;
  }else if( c=='Z' || c=='z' ){
    zDate++;
    goto zulu_time;
  }else{
    return c!=0;
  }
  zDate++;
  if( FUNC0(zDate, "20b:20e", &nHr, &nMn)!=2 ){
    return 1;
  }
  zDate += 5;
  p->tz = sgn*(nMn + nHr*60);
zulu_time:
  while( FUNC1(*zDate) ){ zDate++; }
  p->tzSet = 1;
  return *zDate!=0;
}