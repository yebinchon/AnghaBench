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
typedef  scalar_t__ u8 ;

/* Variables and functions */
 int MAXLEN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__*,int,scalar_t__*) ; 
 scalar_t__ FUNC1 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/ * vectors ; 

__attribute__((used)) static int
FUNC3()
{
#define MAXLEN 64
  u8 in[MAXLEN], out[8], k[16];
  int i;
  int ok = 1;

  for( i = 0; i < 16; ++i ) k[i] = (u8)i;

  for( i = 0; i < MAXLEN; ++i )
  {
    in[i] = (u8)i;
    FUNC0( out, in, i, k );

    if ( FUNC1( out, vectors[i], 8 ) )
    {
      FUNC2( "test vector failed for %d bytes\n", i );
      ok = 0;
    }
  }

  return ok;
}