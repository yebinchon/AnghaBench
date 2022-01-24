#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int a; int b; int c; int d; int e; int f; int g; int h; } ;
typedef  TYPE_1__ macaddr8 ;
struct TYPE_6__ {int a; int b; int c; int d; int e; int f; } ;
typedef  TYPE_2__ macaddr ;
typedef  int /*<<< orphan*/  inet ;
typedef  int Oid ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
#define  CIDROID 131 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ) ; 
#define  INETOID 130 
#define  MACADDR8OID 129 
#define  MACADDROID 128 
 double PGSQL_AF_INET ; 
 double* FUNC3 (int /*<<< orphan*/ *) ; 
 double FUNC4 (int /*<<< orphan*/ *) ; 

double
FUNC5(Datum value, Oid typid, bool *failure)
{
	switch (typid)
	{
		case INETOID:
		case CIDROID:
			{
				inet	   *ip = FUNC0(value);
				int			len;
				double		res;
				int			i;

				/*
				 * Note that we don't use the full address for IPv6.
				 */
				if (FUNC4(ip) == PGSQL_AF_INET)
					len = 4;
				else
					len = 5;

				res = FUNC4(ip);
				for (i = 0; i < len; i++)
				{
					res *= 256;
					res += FUNC3(ip)[i];
				}
				return res;
			}
		case MACADDROID:
			{
				macaddr    *mac = FUNC2(value);
				double		res;

				res = (mac->a << 16) | (mac->b << 8) | (mac->c);
				res *= 256 * 256 * 256;
				res += (mac->d << 16) | (mac->e << 8) | (mac->f);
				return res;
			}
		case MACADDR8OID:
			{
				macaddr8   *mac = FUNC1(value);
				double		res;

				res = (mac->a << 24) | (mac->b << 16) | (mac->c << 8) | (mac->d);
				res *= ((double) 256) * 256 * 256 * 256;
				res += (mac->e << 24) | (mac->f << 16) | (mac->g << 8) | (mac->h);
				return res;
			}
	}

	*failure = true;
	return 0;
}