
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int D3D11_MESSAGE_SEVERITY ;







 int MSGL_DEBUG ;
 int MSGL_ERR ;
 int MSGL_FATAL ;
 int MSGL_WARN ;

__attribute__((used)) static int map_msg_severity(D3D11_MESSAGE_SEVERITY sev)
{
    switch (sev) {
    case 132:
        return MSGL_FATAL;
    case 131:
        return MSGL_ERR;
    case 128:
        return MSGL_WARN;
    default:
    case 130:
    case 129:
        return MSGL_DEBUG;
    }
}
