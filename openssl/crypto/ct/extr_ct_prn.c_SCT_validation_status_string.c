
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCT ;
 int SCT_get_validation_status (int const*) ;

const char *SCT_validation_status_string(const SCT *sct)
{

    switch (SCT_get_validation_status(sct)) {
    case 132:
        return "not set";
    case 130:
        return "unknown version";
    case 131:
        return "unknown log";
    case 129:
        return "unverified";
    case 133:
        return "invalid";
    case 128:
        return "valid";
    }
    return "unknown status";
}
