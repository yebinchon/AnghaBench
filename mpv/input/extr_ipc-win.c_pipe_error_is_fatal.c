
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;







__attribute__((used)) static bool pipe_error_is_fatal(DWORD error)
{
    switch (error) {
    case 0:
    case 130:
    case 131:
    case 128:
    case 129:
        return 0;
    }
    return 1;
}
