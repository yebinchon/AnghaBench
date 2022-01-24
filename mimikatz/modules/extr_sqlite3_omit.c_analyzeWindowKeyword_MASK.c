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
 int TK_AS ; 
 int TK_ID ; 
 int TK_WINDOW ; 
 int FUNC0 (unsigned char const**) ; 

__attribute__((used)) static int FUNC1(const unsigned char *z){
  int t;
  t = FUNC0(&z);
  if( t!=TK_ID ) return TK_ID;
  t = FUNC0(&z);
  if( t!=TK_AS ) return TK_ID;
  return TK_WINDOW;
}