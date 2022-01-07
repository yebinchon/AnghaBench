
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t HPDF_UINT ;
typedef int HPDF_Stream ;
typedef int HPDF_STATUS ;
typedef char HPDF_BYTE ;


 int HPDF_LIMIT_MAX_NAME_LEN ;
 int HPDF_MemSet (char*,int ,int) ;
 int HPDF_OK ;
 int HPDF_SEEK_SET ;
 int HPDF_Stream_Read (int ,char*,size_t*) ;
 int HPDF_Stream_Seek (int ,size_t,int ) ;

__attribute__((used)) static HPDF_STATUS
LoadUnicodeName (HPDF_Stream stream,
                  HPDF_UINT offset,
                  HPDF_UINT len,
                  char *buf)
{
    HPDF_BYTE tmp[HPDF_LIMIT_MAX_NAME_LEN * 2 + 1];
    HPDF_UINT i = 0;
    HPDF_UINT j = 0;
    HPDF_STATUS ret;

    HPDF_MemSet (buf, 0, HPDF_LIMIT_MAX_NAME_LEN + 1);

    if ((ret = HPDF_Stream_Seek (stream, offset, HPDF_SEEK_SET)) !=
            HPDF_OK)
        return ret;

    if ((ret = HPDF_Stream_Read (stream, tmp, &len))
             != HPDF_OK)
        return ret;

    while (i < len) {
        i++;
        buf[j] = tmp[i];
        j++;
        i++;
    }

    return HPDF_OK;
}
