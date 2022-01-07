
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pdb_stream_name {int dummy; } ;
struct pdb_file_info {int fpoext_stream; TYPE_1__* stream_dict; } ;
struct TYPE_2__ {char* name; int index; } ;
typedef int DWORD ;


 int FIXME (char*) ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,unsigned int) ;
 int memcpy (char*,char const*,unsigned int) ;

__attribute__((used)) static void pdb_load_stream_name_table(struct pdb_file_info* pdb_file, const char* str, unsigned cb)
{
    DWORD* pdw;
    DWORD* ok_bits;
    DWORD count, numok;
    unsigned i, j;
    char* cpstr;

    pdw = (DWORD*)(str + cb);
    numok = *pdw++;
    count = *pdw++;

    pdb_file->stream_dict = HeapAlloc(GetProcessHeap(), 0, (numok + 1) * sizeof(struct pdb_stream_name) + cb);
    if (!pdb_file->stream_dict) return;
    cpstr = (char*)(pdb_file->stream_dict + numok + 1);
    memcpy(cpstr, str, cb);


    ok_bits = pdw;
    pdw += *ok_bits++ + 1;
    if (*pdw++ != 0)
    {
        FIXME("unexpected value\n");
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

    pdb_file->stream_dict[numok].name = ((void*)0);
    pdb_file->fpoext_stream = -1;
}
