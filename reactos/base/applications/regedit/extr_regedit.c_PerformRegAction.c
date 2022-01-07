
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int REGEDIT_ACTION ;
typedef int * LPWSTR ;
typedef int FILE ;
typedef int BOOL ;





 int COUNT_OF (int*) ;


 int IDS_IMPORT_ERROR ;
 int IDS_IMPORT_OK ;
 int IDS_IMPORT_PROMPT ;
 int InfoMessageBox (int *,int,int *,...) ;
 int KEY_MAX_LEN ;
 int LoadStringW (int ,int ,int*,int ) ;
 int MAX_PATH ;
 int MB_ICONERROR ;
 int MB_ICONINFORMATION ;
 int MB_ICONWARNING ;
 int MB_OK ;
 int MB_YESNOCANCEL ;
 int REG_FORMAT_4 ;
 int TRUE ;
 int * _wfopen (int*,char*) ;
 int delete_registry_key (int*) ;
 int exit (int) ;
 int export_registry_key (int*,int*,int ) ;
 int fclose (int *) ;
 int fwprintf (int ,char*,char*) ;
 char* getAppName () ;
 int get_file_name (int **,int*) ;
 int hInst ;
 int import_registry_file (int *) ;
 int stderr ;
 int * szTitle ;
 char* usage ;

BOOL PerformRegAction(REGEDIT_ACTION action, LPWSTR s, BOOL silent)
{
    switch (action)
    {
        case 132:
        {
            WCHAR szText[512];
            WCHAR filename[MAX_PATH];
            FILE *fp;

            get_file_name(&s, filename);
            if (!filename[0])
            {
                InfoMessageBox(((void*)0), MB_OK | MB_ICONINFORMATION, ((void*)0), L"No file name is specified.");
                InfoMessageBox(((void*)0), MB_OK | MB_ICONINFORMATION, szTitle, usage);
                exit(4);
            }

            while (filename[0])
            {

                if (!silent)
                {
                    int choice;

                    LoadStringW(hInst, IDS_IMPORT_PROMPT, szText, COUNT_OF(szText));

                    choice = InfoMessageBox(((void*)0), MB_YESNOCANCEL | MB_ICONWARNING, szTitle, szText, filename);

                    switch (choice)
                    {
                        case 128:
                            goto cont;
                        case 129:




                            return TRUE;
                        default:
                            break;
                    }
                }


                fp = _wfopen(filename, L"r");


                if (fp == ((void*)0) || !import_registry_file(fp))
                {

                    if (!silent)
                    {
                        LoadStringW(hInst, IDS_IMPORT_ERROR, szText, COUNT_OF(szText));
                        InfoMessageBox(((void*)0), MB_OK | MB_ICONERROR, szTitle, szText, filename);
                    }
                }
                else
                {

                    if (!silent)
                    {
                        LoadStringW(hInst, IDS_IMPORT_OK, szText, COUNT_OF(szText));
                        InfoMessageBox(((void*)0), MB_OK | MB_ICONINFORMATION, szTitle, szText, filename);
                    }
                }


                if (fp) fclose(fp);

cont:
                get_file_name(&s, filename);
            }
            break;
        }

        case 131:
        {
            WCHAR reg_key_name[KEY_MAX_LEN];
            get_file_name(&s, reg_key_name);
            if (!reg_key_name[0])
            {
                InfoMessageBox(((void*)0), MB_OK | MB_ICONINFORMATION, ((void*)0), L"No registry key is specified for removal.");
                InfoMessageBox(((void*)0), MB_OK | MB_ICONINFORMATION, szTitle, usage);
                exit(6);
            }
            delete_registry_key(reg_key_name);
            break;
        }

        case 130:
        {
            WCHAR filename[MAX_PATH];

            filename[0] = L'\0';
            get_file_name(&s, filename);
            if (!filename[0])
            {
                InfoMessageBox(((void*)0), MB_OK | MB_ICONINFORMATION, ((void*)0), L"No file name is specified.");
                InfoMessageBox(((void*)0), MB_OK | MB_ICONINFORMATION, szTitle, usage);
                exit(7);
            }

            if (s[0])
            {
                WCHAR reg_key_name[KEY_MAX_LEN];
                get_file_name(&s, reg_key_name);
                export_registry_key(filename, reg_key_name, REG_FORMAT_4);
            }
            else
            {
                export_registry_key(filename, ((void*)0), REG_FORMAT_4);
            }
            break;
        }

        default:
            fwprintf(stderr, L"%s: Unhandled action!\n", getAppName());
            exit(8);
            break;
    }

    return TRUE;
}
