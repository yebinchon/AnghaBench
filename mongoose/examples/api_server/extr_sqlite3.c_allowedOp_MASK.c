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
 int TK_EQ ; 
 int TK_GE ; 
 int TK_GT ; 
 int TK_IN ; 
 int TK_ISNULL ; 
 int TK_LE ; 
 int TK_LT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static int FUNC1(int op){
  FUNC0( TK_GT>TK_EQ && TK_GT<TK_GE );
  FUNC0( TK_LT>TK_EQ && TK_LT<TK_GE );
  FUNC0( TK_LE>TK_EQ && TK_LE<TK_GE );
  FUNC0( TK_GE==TK_EQ+4 );
  return op==TK_IN || (op>=TK_EQ && op<=TK_GE) || op==TK_ISNULL;
}