
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pdb_lookup {int filename; } ;
struct pdb_file_info {int dummy; } ;
typedef int * HANDLE ;
typedef int BOOL ;


 int CloseHandle (int *) ;
 int * CreateFileA (int ,int ,int ,int *,int ,int ,int *) ;
 int * CreateFileMappingW (int *,int *,int ,int ,int ,int *) ;
 int FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_MAP_READ ;
 int FILE_SHARE_READ ;
 int GENERIC_READ ;
 int * INVALID_HANDLE_VALUE ;
 char* MapViewOfFile (int *,int ,int ,int ,int ) ;
 int OPEN_EXISTING ;
 int PAGE_READONLY ;
 int UnmapViewOfFile (char*) ;
 int WARN (char*,int ) ;
 int pdb_free_file (struct pdb_file_info*) ;
 int pdb_init (struct pdb_lookup const*,struct pdb_file_info*,char*,unsigned int*) ;

BOOL pdb_fetch_file_info(const struct pdb_lookup* pdb_lookup, unsigned* matched)
{
    HANDLE hFile, hMap = ((void*)0);
    char* image = ((void*)0);
    BOOL ret;
    struct pdb_file_info pdb_file;

    if ((hFile = CreateFileA(pdb_lookup->filename, GENERIC_READ, FILE_SHARE_READ, ((void*)0),
                             OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, ((void*)0))) == INVALID_HANDLE_VALUE ||
        ((hMap = CreateFileMappingW(hFile, ((void*)0), PAGE_READONLY, 0, 0, ((void*)0))) == ((void*)0)) ||
        ((image = MapViewOfFile(hMap, FILE_MAP_READ, 0, 0, 0)) == ((void*)0)))
    {
        WARN("Unable to open .PDB file: %s\n", pdb_lookup->filename);
        ret = FALSE;
    }
    else
    {
        ret = pdb_init(pdb_lookup, &pdb_file, image, matched);
        pdb_free_file(&pdb_file);
    }

    if (image) UnmapViewOfFile(image);
    if (hMap) CloseHandle(hMap);
    if (hFile != INVALID_HANDLE_VALUE) CloseHandle(hFile);

    return ret;
}
