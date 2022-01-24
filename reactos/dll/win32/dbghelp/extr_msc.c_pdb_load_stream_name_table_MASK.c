#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pdb_stream_name {int dummy; } ;
struct pdb_file_info {int fpoext_stream; TYPE_1__* stream_dict; } ;
struct TYPE_2__ {char* name; int /*<<< orphan*/  index; } ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,unsigned int) ; 

__attribute__((used)) static void FUNC4(struct pdb_file_info* pdb_file, const char* str, unsigned cb)
{
    DWORD*      pdw;
    DWORD*      ok_bits;
    DWORD       count, numok;
    unsigned    i, j;
    char*       cpstr;

    pdw = (DWORD*)(str + cb);
    numok = *pdw++;
    count = *pdw++;

    pdb_file->stream_dict = FUNC2(FUNC1(), 0, (numok + 1) * sizeof(struct pdb_stream_name) + cb);
    if (!pdb_file->stream_dict) return;
    cpstr = (char*)(pdb_file->stream_dict + numok + 1);
    FUNC3(cpstr, str, cb);

    /* bitfield: first dword is len (in dword), then data */
    ok_bits = pdw;
    pdw += *ok_bits++ + 1;
    if (*pdw++ != 0)
    {
        FUNC0("unexpected value\n");
        return;
    }

    for (i = j = 0; i < count; i++)
    {
        if (ok_bits[i / 32] & (1 << (i % 32)))
        {
            if (j >= numok) break;
            pdb_file->stream_dict[j].name = &cpstr[*pdw++];
            pdb_file->stream_dict[j].index = *pdw++;
            j++;
        }
    }
    /* add sentinel */
    pdb_file->stream_dict[numok].name = NULL;
    pdb_file->fpoext_stream = -1;
}