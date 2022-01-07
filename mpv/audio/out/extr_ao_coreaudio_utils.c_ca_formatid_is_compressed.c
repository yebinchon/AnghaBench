
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;





bool ca_formatid_is_compressed(uint32_t formatid)
{
    switch (formatid)
    case 'IAC3':
    case 'iac3':
    case 129:
    case 128:
        return 1;
    return 0;
}
