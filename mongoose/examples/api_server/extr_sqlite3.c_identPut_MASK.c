#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 scalar_t__ TK_ID ; 
 int /*<<< orphan*/  FUNC0 (unsigned char) ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 scalar_t__ FUNC2 (unsigned char*,int) ; 

__attribute__((used)) static void FUNC3(char *z, int *pIdx, char *zSignedIdent){
  unsigned char *zIdent = (unsigned char*)zSignedIdent;
  int i, j, needQuote;
  i = *pIdx;

  for(j=0; zIdent[j]; j++){
    if( !FUNC0(zIdent[j]) && zIdent[j]!='_' ) break;
  }
  needQuote = FUNC1(zIdent[0]) || FUNC2(zIdent, j)!=TK_ID;
  if( !needQuote ){
    needQuote = zIdent[j];
  }

  if( needQuote ) z[i++] = '"';
  for(j=0; zIdent[j]; j++){
    z[i++] = zIdent[j];
    if( zIdent[j]=='"' ) z[i++] = '"';
  }
  if( needQuote ) z[i++] = '"';
  z[i] = 0;
  *pIdx = i;
}