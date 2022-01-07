
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RRDCALC_STATUS ;
 int error (char*,int) ;

inline const char *rrdcalc_status2string(RRDCALC_STATUS status) {
    switch(status) {
        case 131:
            return "REMOVED";

        case 130:
            return "UNDEFINED";

        case 129:
            return "UNINITIALIZED";

        case 134:
            return "CLEAR";

        case 132:
            return "RAISED";

        case 128:
            return "WARNING";

        case 133:
            return "CRITICAL";

        default:
            error("Unknown alarm status %d", status);
            return "UNKNOWN";
    }
}
