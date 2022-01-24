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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int*,int*,int*) ; 
 int MAXDIM ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int) ; 
 int FUNC7 (char*,int,char*,int,int /*<<< orphan*/ *,int,int,char) ; 
 char* FUNC8 (char*,int,int /*<<< orphan*/ *,int,int,int,char) ; 
 int /*<<< orphan*/  FUNC9 (int,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC10 (int,int*,int*) ; 
 int /*<<< orphan*/  FUNC11 (int,int*,int*,int*) ; 
 int FUNC12 (int,int*,int*) ; 

__attribute__((used)) static void
FUNC13(ArrayType *destArray,
				   ArrayType *origArray,
				   ArrayType *srcArray,
				   int ndim,
				   int *dim,
				   int *lb,
				   int *st,
				   int *endp,
				   int typlen,
				   bool typbyval,
				   char typalign)
{
	char	   *destPtr = FUNC0(destArray);
	char	   *origPtr = FUNC0(origArray);
	char	   *srcPtr = FUNC0(srcArray);
	bits8	   *destBitmap = FUNC3(destArray);
	bits8	   *origBitmap = FUNC3(origArray);
	bits8	   *srcBitmap = FUNC3(srcArray);
	int			orignitems = FUNC4(FUNC2(origArray),
											FUNC1(origArray));
	int			dest_offset,
				orig_offset,
				src_offset,
				prod[MAXDIM],
				span[MAXDIM],
				dist[MAXDIM],
				indx[MAXDIM];
	int			i,
				j,
				inc;

	dest_offset = FUNC5(ndim, dim, lb, st);
	/* copy items before the slice start */
	inc = FUNC7(destPtr, dest_offset,
					 origPtr, 0, origBitmap,
					 typlen, typbyval, typalign);
	destPtr += inc;
	origPtr += inc;
	if (destBitmap)
		FUNC6(destBitmap, 0, origBitmap, 0, dest_offset);
	orig_offset = dest_offset;
	FUNC10(ndim, dim, prod);
	FUNC11(ndim, span, st, endp);
	FUNC9(ndim, dist, prod, span);
	for (i = 0; i < ndim; i++)
		indx[i] = 0;
	src_offset = 0;
	j = ndim - 1;
	do
	{
		/* Copy/advance over elements between here and next part of slice */
		if (dist[j])
		{
			inc = FUNC7(destPtr, dist[j],
							 origPtr, orig_offset, origBitmap,
							 typlen, typbyval, typalign);
			destPtr += inc;
			origPtr += inc;
			if (destBitmap)
				FUNC6(destBitmap, dest_offset,
								  origBitmap, orig_offset,
								  dist[j]);
			dest_offset += dist[j];
			orig_offset += dist[j];
		}
		/* Copy new element at this slice position */
		inc = FUNC7(destPtr, 1,
						 srcPtr, src_offset, srcBitmap,
						 typlen, typbyval, typalign);
		if (destBitmap)
			FUNC6(destBitmap, dest_offset,
							  srcBitmap, src_offset,
							  1);
		destPtr += inc;
		srcPtr += inc;
		dest_offset++;
		src_offset++;
		/* Advance over old element at this slice position */
		origPtr = FUNC8(origPtr, orig_offset, origBitmap, 1,
							 typlen, typbyval, typalign);
		orig_offset++;
	} while ((j = FUNC12(ndim, indx, span)) != -1);

	/* don't miss any data at the end */
	FUNC7(destPtr, orignitems - orig_offset,
			   origPtr, orig_offset, origBitmap,
			   typlen, typbyval, typalign);
	if (destBitmap)
		FUNC6(destBitmap, dest_offset,
						  origBitmap, orig_offset,
						  orignitems - orig_offset);
}