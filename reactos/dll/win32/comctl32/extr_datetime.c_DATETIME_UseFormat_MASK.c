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
struct TYPE_3__ {int nrFields; int* fieldspec; char* textbuf; int nrFieldsAllocated; scalar_t__* buflen; } ;
typedef  char* LPCWSTR ;
typedef  TYPE_1__ DATETIME_INFO ;
typedef  int BOOL ;

/* Variables and functions */
 int DT_STRING ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 char* allowedformatchars ; 
 int* maxrepetition ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3 (DATETIME_INFO *infoPtr, LPCWSTR formattxt)
{
    unsigned int i;
    int j, k, len;
    BOOL inside_literal = FALSE; /* inside '...' */
    int *nrFields = &infoPtr->nrFields;

    *nrFields = 0;
    infoPtr->fieldspec[*nrFields] = 0;
    len = FUNC2(allowedformatchars);
    k = 0;

    for (i = 0; formattxt[i]; i++)  {
	FUNC1 ("\n%d %c:", i, formattxt[i]);
	if (!inside_literal) {
	    for (j = 0; j < len; j++) {
	        if (allowedformatchars[j]==formattxt[i]) {
                    FUNC1 ("%c[%d,%x]", allowedformatchars[j], *nrFields, infoPtr->fieldspec[*nrFields]);
                    if ((*nrFields==0) && (infoPtr->fieldspec[*nrFields]==0)) {
                        infoPtr->fieldspec[*nrFields] = (j<<4) + 1;
                        break;
                    }
                    if (infoPtr->fieldspec[*nrFields] >> 4 != j) {
                        (*nrFields)++;
                        infoPtr->fieldspec[*nrFields] = (j<<4) + 1;
                        break;
                    }
                    if ((infoPtr->fieldspec[*nrFields] & 0x0f) == maxrepetition[j]) {
                        (*nrFields)++;
                        infoPtr->fieldspec[*nrFields] = (j<<4) + 1;
                        break;
		    }
                    infoPtr->fieldspec[*nrFields]++;
                    break;
                }   /* if allowedformatchar */
            } /* for j */
        }
        else
            j = len;

        if (formattxt[i] == '\'')
        {
            inside_literal = !inside_literal;
            continue;
        }

	/* char is not a specifier: handle char like a string */
	if (j == len) {
	    if ((*nrFields==0) && (infoPtr->fieldspec[*nrFields]==0)) {
		infoPtr->fieldspec[*nrFields] = DT_STRING + k;
		infoPtr->buflen[*nrFields] = 0;
            } else if ((infoPtr->fieldspec[*nrFields] & DT_STRING) != DT_STRING)  {
		(*nrFields)++;
		infoPtr->fieldspec[*nrFields] = DT_STRING + k;
		infoPtr->buflen[*nrFields] = 0;
	    }
	    infoPtr->textbuf[k] = formattxt[i];
	    k++;
	    infoPtr->buflen[*nrFields]++;
	}   /* if j=len */

	if (*nrFields == infoPtr->nrFieldsAllocated) {
	    FUNC0 ("out of memory; should reallocate. crash ahead.\n");
	}
    } /* for i */

    FUNC1("\n");

    if (infoPtr->fieldspec[*nrFields] != 0) (*nrFields)++;
}