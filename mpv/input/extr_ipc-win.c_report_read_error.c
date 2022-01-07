
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct client_arg {int dummy; } ;
typedef int DWORD ;


 int HRESULT_FROM_WIN32 (int ) ;
 int MP_ERR (struct client_arg*,char*,int ) ;
 int MP_VERBOSE (struct client_arg*,char*) ;
 int mp_HRESULT_to_str (int ) ;
 scalar_t__ pipe_error_is_fatal (int ) ;

__attribute__((used)) static void report_read_error(struct client_arg *arg, DWORD error)
{

    if (pipe_error_is_fatal(error)) {
        MP_ERR(arg, "Error reading from pipe: %s\n",
            mp_HRESULT_to_str(HRESULT_FROM_WIN32(error)));
    } else {
        MP_VERBOSE(arg, "Client disconnected\n");
    }
}
