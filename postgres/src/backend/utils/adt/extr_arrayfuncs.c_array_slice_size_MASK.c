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
typedef  int /*<<< orphan*/  bits8 ;

/* Variables and functions */
 int FUNC0 (int,int*) ; 
 int FUNC1 (int,int*,int*,int*) ; 
 int MAXDIM ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 char* FUNC3 (char*,int,int /*<<< orphan*/ *,int,int,int,char) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,char*) ; 
 int FUNC5 (int,char) ; 
 int /*<<< orphan*/  FUNC6 (int,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int,int*,int*) ; 
 int /*<<< orphan*/  FUNC8 (int,int*,int*,int*) ; 
 int FUNC9 (int,int*,int*) ; 

__attribute__((used)) static int
FUNC10(char *arraydataptr, bits8 *arraynullsptr,
				 int ndim, int *dim, int *lb,
				 int *st, int *endp,
				 int typlen, bool typbyval, char typalign)
{
	int			src_offset,
				span[MAXDIM],
				prod[MAXDIM],
				dist[MAXDIM],
				indx[MAXDIM];
	char	   *ptr;
	int			i,
				j,
				inc;
	int			count = 0;

	FUNC8(ndim, span, st, endp);

	/* Pretty easy for fixed element length without nulls ... */
	if (typlen > 0 && !arraynullsptr)
		return FUNC0(ndim, span) * FUNC5(typlen, typalign);

	/* Else gotta do it the hard way */
	src_offset = FUNC1(ndim, dim, lb, st);
	ptr = FUNC3(arraydataptr, 0, arraynullsptr, src_offset,
					 typlen, typbyval, typalign);
	FUNC7(ndim, dim, prod);
	FUNC6(ndim, dist, prod, span);
	for (i = 0; i < ndim; i++)
		indx[i] = 0;
	j = ndim - 1;
	do
	{
		if (dist[j])
		{
			ptr = FUNC3(ptr, src_offset, arraynullsptr, dist[j],
							 typlen, typbyval, typalign);
			src_offset += dist[j];
		}
		if (!FUNC2(arraynullsptr, src_offset))
		{
			inc = FUNC4(0, typlen, ptr);
			inc = FUNC5(inc, typalign);
			ptr += inc;
			count += inc;
		}
		src_offset++;
	} while ((j = FUNC9(ndim, indx, span)) != -1);
	return count;
}