
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fe_modulation_t ;


 int APSK_16 ;
 int APSK_32 ;
 int DQPSK ;
 int PSK_8 ;
 int QAM_128 ;
 int QAM_16 ;
 int QAM_256 ;
 int QAM_32 ;
 int QAM_64 ;
 int QAM_AUTO ;
 int QPSK ;
 int VSB_16 ;
 int VSB_8 ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static fe_modulation_t parse_vdr_modulation(const char** modstring) {
    if (!strncmp(*modstring, "16", 2)) {
        (*modstring)+=2;
        return QAM_16;
    } else if (!strncmp(*modstring, "32", 2)) {
        (*modstring)+=2;
        return QAM_32;
    } else if (!strncmp(*modstring, "64", 2)) {
        (*modstring)+=2;
        return QAM_64;
    } else if (!strncmp(*modstring, "128", 3)) {
        (*modstring)+=3;
        return QAM_128;
    } else if (!strncmp(*modstring, "256", 3)) {
        (*modstring)+=3;
        return QAM_256;
    } else if (!strncmp(*modstring, "998", 3)) {
        (*modstring)+=3;
        return QAM_AUTO;
    } else if (!strncmp(*modstring, "2", 1)) {
        (*modstring)++;
        return QPSK;
    } else if (!strncmp(*modstring, "5", 1)) {
        (*modstring)++;
        return PSK_8;
    } else if (!strncmp(*modstring, "6", 1)) {
        (*modstring)++;
        return APSK_16;
    } else if (!strncmp(*modstring, "7", 1)) {
        (*modstring)++;
        return APSK_32;
    } else if (!strncmp(*modstring, "10", 2)) {
        (*modstring)+=2;
        return VSB_8;
    } else if (!strncmp(*modstring, "11", 2)) {
        (*modstring)+=2;
        return VSB_16;
    } else if (!strncmp(*modstring, "12", 2)) {
        (*modstring)+=2;
        return DQPSK;
    } else {
        return QAM_AUTO;
    }
}
