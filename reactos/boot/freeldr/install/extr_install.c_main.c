
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BackupBootSector (char*) ;
 int CloseVolume () ;
 int InstallBootSector (char*) ;
 int OpenVolume (char*) ;
 int _T (char*) ;
 int _tprintf (int ,...) ;

int main(int argc, char *argv[])
{
    if (argc < 3)
    {
        _tprintf(_T("syntax: install x: [fs_type]\nwhere fs_type is fat or fat32\n"));
        return -1;
    }

    if (!OpenVolume(argv[1]))
    {
        return -1;
    }

    BackupBootSector(argv[1]);

    InstallBootSector(argv[2]);

    _tprintf(_T("You must now copy freeldr.sys & freeldr.ini to %s.\n"), argv[1]);

    CloseVolume();

    return 0;
}
