
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int DWORD ;


 int CP_UTF8 ;
 char* DEFAULT_HOME ;
 int GetEnvironmentVariableW (char*,char*,int) ;
 char* RFILE ;
 int WideCharToMultiByte (int ,int ,char*,int,char*,int,int *,int *) ;
 void* _alloca (int) ;
 char* ossl_safe_getenv (char*) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 size_t strlen (char*) ;

const char *RAND_file_name(char *buf, size_t size)
{
    char *s = ((void*)0);
    size_t len;
    int use_randfile = 1;
    if ((s = ossl_safe_getenv("RANDFILE")) == ((void*)0) || *s == '\0') {
        use_randfile = 0;
        s = ossl_safe_getenv("HOME");
    }






    if (s == ((void*)0) || *s == '\0')
        return ((void*)0);

    len = strlen(s);
    if (use_randfile) {
        if (len + 1 >= size)
            return ((void*)0);
        strcpy(buf, s);
    } else {
        if (len + 1 + strlen(RFILE) + 1 >= size)
            return ((void*)0);
        strcpy(buf, s);

        strcat(buf, "/");

        strcat(buf, RFILE);
    }

    return buf;
}
