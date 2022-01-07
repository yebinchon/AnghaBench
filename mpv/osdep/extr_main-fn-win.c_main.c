
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int ** CommandLineToArgvW (int ,int*) ;
 int GetCommandLineW () ;
 int MP_TARRAY_APPEND (int *,char**,int,char*) ;
 int has_redirected_stdio () ;
 int microsoft_nonsense () ;
 char* mp_to_utf8 (char**,int *) ;
 int mpv_main (int,char**) ;
 int talloc_free (char**) ;
 int terminal_try_attach () ;

int main(int argc_, char **argv_)
{
    microsoft_nonsense();



    bool has_console = terminal_try_attach();




    bool gui = !has_console && !has_redirected_stdio();

    int argc = 0;
    wchar_t **argv = CommandLineToArgvW(GetCommandLineW(), &argc);

    int argv_len = 0;
    char **argv_u8 = ((void*)0);


    if (argc > 0 && argv[0])
        MP_TARRAY_APPEND(((void*)0), argv_u8, argv_len, mp_to_utf8(argv_u8, argv[0]));
    if (gui) {
        MP_TARRAY_APPEND(((void*)0), argv_u8, argv_len,
                         "--player-operation-mode=pseudo-gui");
    }
    for (int i = 1; i < argc; i++)
        MP_TARRAY_APPEND(((void*)0), argv_u8, argv_len, mp_to_utf8(argv_u8, argv[i]));
    MP_TARRAY_APPEND(((void*)0), argv_u8, argv_len, ((void*)0));

    int ret = mpv_main(argv_len - 1, argv_u8);

    talloc_free(argv_u8);
    return ret;
}
