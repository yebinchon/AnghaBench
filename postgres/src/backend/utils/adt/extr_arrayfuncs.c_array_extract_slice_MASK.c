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
typedef  int /*<<< orphan*/  ArrayType ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int,int*,int*,int*) ; 
 int MAXDIM ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int) ; 
 int FUNC4 (char*,int,char*,int,int /*<<< orphan*/ *,int,int,char) ; 
 char* FUNC5 (char*,int,int /*<<< orphan*/ *,int,int,int,char) ; 
 int /*<<< orphan*/  FUNC6 (int,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int,int*,int*) ; 
 int /*<<< orphan*/  FUNC8 (int,int*,int*,int*) ; 
 int FUNC9 (int,int*,int*) ; 

__attribute__((used)) static void
FUNC10(ArrayType *newarray,
					int ndim,
					int *dim,
					int *lb,
					char *arraydataptr,
					bits8 *arraynullsptr,
					int *st,
					int *endp,
					int typlen,
					bool typbyval,
					char typalign)
{
	char	   *destdataptr = FUNC0(newarray);
	bits8	   *destnullsptr = FUNC1(newarray);
	char	   *srcdataptr;
	int			src_offset,
				dest_offset,
				prod[MAXDIM],
				span[MAXDIM],
				dist[MAXDIM],
				indx[MAXDIM];
	int			i,
				j,
				inc;

	src_offset = FUNC2(ndim, dim, lb, st);
	srcdataptr = FUNC5(arraydataptr, 0, arraynullsptr, src_offset,
							typlen, typbyval, typalign);
	FUNC7(ndim, dim, prod);
	FUNC8(ndim, span, st, endp);
	FUNC6(ndim, dist, prod, span);
	for (i = 0; i < ndim; i++)
		indx[i] = 0;
	dest_offset = 0;
	j = ndim - 1;
	do
	{
		if (dist[j])
		{
			/* skip unwanted elements */
			srcdataptr = FUNC5(srcdataptr, src_offset, arraynullsptr,
									dist[j],
									typlen, typbyval, typalign);
			src_offset += dist[j];
		}
		inc = FUNC4(destdataptr, 1,
						 srcdataptr, src_offset, arraynullsptr,
						 typlen, typbyval, typalign);
		if (destnullsptr)
			FUNC3(destnullsptr, dest_offset,
							  arraynullsptr, src_offset,
							  1);
		destdataptr += inc;
		srcdataptr += inc;
		src_offset++;
		dest_offset++;
	} while ((j = FUNC9(ndim, indx, span)) != -1);
}