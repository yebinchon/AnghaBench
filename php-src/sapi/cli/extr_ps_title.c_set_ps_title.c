
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int wchar_t ;
union pstun {char* pst_command; } ;
struct TYPE_2__ {int ps_nargvstr; char* ps_argvstr; } ;


 int PSTAT_SETCMD ;
 int PS_PADDING ;
 TYPE_1__* PS_STRINGS ;
 int PS_TITLE_SUCCESS ;
 int PS_TITLE_WINDOWS_ERROR ;
 int SetConsoleTitleW (int *) ;
 int free (int *) ;
 int is_ps_title_available () ;
 int memset (char*,int ,int) ;
 int * php_win32_cp_any_to_w (char*) ;
 char* ps_buffer ;
 int ps_buffer_cur_len ;
 int ps_buffer_size ;
 int pstat (int ,union pstun,int,int ,int ) ;
 int setproctitle (char*,char*) ;
 int strlen (char*) ;
 int strncpy (char*,char const*,int) ;

int set_ps_title(const char* title)
{
    int rc = is_ps_title_available();
    if (rc != PS_TITLE_SUCCESS)
        return rc;

    strncpy(ps_buffer, title, ps_buffer_size);
    ps_buffer[ps_buffer_size - 1] = '\0';
    ps_buffer_cur_len = strlen(ps_buffer);
    return PS_TITLE_SUCCESS;
}
