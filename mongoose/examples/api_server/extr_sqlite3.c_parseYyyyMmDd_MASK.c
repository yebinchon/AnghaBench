#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  char u8 ;
struct TYPE_5__ {int validYMD; int Y; int M; int D; scalar_t__ validTZ; scalar_t__ validJD; scalar_t__ validHMS; } ;
typedef  TYPE_1__ DateTime ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (char const*,int,int /*<<< orphan*/ ,int,char,int*,int,int,int,char,int*,int,int,int,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC2 (char const*,TYPE_1__*) ; 
 scalar_t__ FUNC3 (char const) ; 

__attribute__((used)) static int FUNC4(const char *zDate, DateTime *p){
  int Y, M, D, neg;

  if( zDate[0]=='-' ){
    zDate++;
    neg = 1;
  }else{
    neg = 0;
  }
  if( FUNC1(zDate,4,0,9999,'-',&Y,2,1,12,'-',&M,2,1,31,0,&D)!=3 ){
    return 1;
  }
  zDate += 10;
  while( FUNC3(*zDate) || 'T'==*(u8*)zDate ){ zDate++; }
  if( FUNC2(zDate, p)==0 ){
    /* We got the time */
  }else if( *zDate==0 ){
    p->validHMS = 0;
  }else{
    return 1;
  }
  p->validJD = 0;
  p->validYMD = 1;
  p->Y = neg ? -Y : Y;
  p->M = M;
  p->D = D;
  if( p->validTZ ){
    FUNC0(p);
  }
  return 0;
}