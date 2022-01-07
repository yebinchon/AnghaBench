
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WCHAR ;
typedef scalar_t__ HKEY ;
typedef int FILE ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ CHAR ;
typedef scalar_t__ BYTE ;
typedef int BOOL ;


 int CHECK_ENOUGH_MEMORY (int ) ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__* GetMultiByteString (scalar_t__*) ;
 int GetProcessHeap () ;
 scalar_t__ HKEY_CLASSES_ROOT ;
 scalar_t__ HKEY_CURRENT_CONFIG ;
 scalar_t__ HKEY_CURRENT_USER ;
 scalar_t__ HKEY_DYN_DATA ;
 scalar_t__* HeapAlloc (int ,int ,scalar_t__) ;
 int HeapFree (int ,int ,scalar_t__*) ;
 scalar_t__ KEY_MAX_LEN ;
 int * REGPROC_open_export_file (scalar_t__*,int) ;
 int REGPROC_print_error () ;
 int REGPROC_resize_char_buffer (scalar_t__**,scalar_t__*,int ) ;
 unsigned int REG_CLASS_NUMBER ;
 scalar_t__ REG_FORMAT_5 ;
 scalar_t__ REG_VAL_BUF_SIZE ;
 int RegCloseKey (scalar_t__) ;
 scalar_t__ RegOpenKeyW (scalar_t__,scalar_t__*,scalar_t__*) ;
 int TRUE ;
 int exit (int) ;
 int export_hkey (int *,scalar_t__,scalar_t__**,scalar_t__*,scalar_t__**,scalar_t__*,scalar_t__**,scalar_t__*,scalar_t__**,scalar_t__*,int) ;
 int fclose (int *) ;
 int fprintf (int ,char*,int ,scalar_t__*) ;
 int getAppName () ;
 int lstrcpyW (scalar_t__*,scalar_t__*) ;
 int lstrlenW (scalar_t__*) ;
 int parseKeyName (scalar_t__*,scalar_t__*,scalar_t__**) ;
 scalar_t__* reg_class_keys ;
 scalar_t__** reg_class_namesW ;
 int stderr ;

BOOL export_registry_key(WCHAR *file_name, WCHAR *reg_key_name, DWORD format)
{
    WCHAR *reg_key_name_buf;
    WCHAR *val_name_buf;
    BYTE *val_buf;
    WCHAR *line_buf;
    DWORD reg_key_name_size = KEY_MAX_LEN;
    DWORD val_name_size = KEY_MAX_LEN;
    DWORD val_size = REG_VAL_BUF_SIZE;
    DWORD line_buf_size = KEY_MAX_LEN + REG_VAL_BUF_SIZE;
    FILE *file = ((void*)0);
    BOOL unicode = (format == REG_FORMAT_5);

    reg_key_name_buf = HeapAlloc(GetProcessHeap(), 0,
                                 reg_key_name_size * sizeof(*reg_key_name_buf));
    val_name_buf = HeapAlloc(GetProcessHeap(), 0,
                             val_name_size * sizeof(*val_name_buf));
    val_buf = HeapAlloc(GetProcessHeap(), 0, val_size);
    line_buf = HeapAlloc(GetProcessHeap(), 0, line_buf_size * sizeof(*line_buf));
    CHECK_ENOUGH_MEMORY(reg_key_name_buf && val_name_buf && val_buf && line_buf);

    if (reg_key_name && reg_key_name[0]) {
        HKEY reg_key_class;
        WCHAR *branch_name = ((void*)0);
        HKEY key;

        REGPROC_resize_char_buffer(&reg_key_name_buf, &reg_key_name_size,
                                   lstrlenW(reg_key_name));
        lstrcpyW(reg_key_name_buf, reg_key_name);


        if (!parseKeyName(reg_key_name, &reg_key_class, &branch_name)) {
            CHAR* key_nameA = GetMultiByteString(reg_key_name);
            fprintf(stderr,"%S: Incorrect registry class specification in '%s'\n",
                    getAppName(), key_nameA);
            HeapFree(GetProcessHeap(), 0, key_nameA);
            exit(1);
        }
        if (!branch_name[0]) {

            file = REGPROC_open_export_file(file_name, unicode);
            export_hkey(file, reg_key_class,
                        &reg_key_name_buf, &reg_key_name_size,
                        &val_name_buf, &val_name_size,
                        &val_buf, &val_size, &line_buf,
                        &line_buf_size, unicode);
        } else if (RegOpenKeyW(reg_key_class, branch_name, &key) == ERROR_SUCCESS) {
            file = REGPROC_open_export_file(file_name, unicode);
            export_hkey(file, key,
                        &reg_key_name_buf, &reg_key_name_size,
                        &val_name_buf, &val_name_size,
                        &val_buf, &val_size, &line_buf,
                        &line_buf_size, unicode);
            RegCloseKey(key);
        } else {
            CHAR* key_nameA = GetMultiByteString(reg_key_name);
            fprintf(stderr,"%S: Can't export. Registry key '%s' does not exist!\n",
                    getAppName(), key_nameA);
            HeapFree(GetProcessHeap(), 0, key_nameA);
            REGPROC_print_error();
        }
    } else {
        unsigned int i;


        file = REGPROC_open_export_file(file_name, unicode);
        for (i = 0; i < REG_CLASS_NUMBER; i++) {

            if (reg_class_keys[i] != HKEY_CLASSES_ROOT &&
                    reg_class_keys[i] != HKEY_CURRENT_USER &&
                    reg_class_keys[i] != HKEY_CURRENT_CONFIG &&
                    reg_class_keys[i] != HKEY_DYN_DATA) {
                lstrcpyW(reg_key_name_buf, reg_class_namesW[i]);
                export_hkey(file, reg_class_keys[i],
                            &reg_key_name_buf, &reg_key_name_size,
                            &val_name_buf, &val_name_size,
                            &val_buf, &val_size, &line_buf,
                            &line_buf_size, unicode);
            }
        }
    }

    if (file) {
        fclose(file);
    }
    HeapFree(GetProcessHeap(), 0, reg_key_name);
    HeapFree(GetProcessHeap(), 0, val_name_buf);
    HeapFree(GetProcessHeap(), 0, val_buf);
    HeapFree(GetProcessHeap(), 0, line_buf);
    return TRUE;
}
