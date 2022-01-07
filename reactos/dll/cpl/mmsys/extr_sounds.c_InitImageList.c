
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef scalar_t__ UINT ;
typedef int INT ;
typedef int * HIMAGELIST ;
typedef int * HANDLE ;


 int DeleteObject (int *) ;
 int ILC_COLOR32 ;
 int ILC_MASK ;
 int IMAGE_BITMAP ;
 int IMAGE_ICON ;
 int ImageList_AddIcon (int *,int *) ;
 int ImageList_AddMasked (int *,int *,int ) ;
 int * ImageList_Create (scalar_t__,scalar_t__,int,scalar_t__,int ) ;
 int ImageList_Destroy (int *) ;
 int LR_LOADTRANSPARENT ;
 int * LoadImageW (int ,int ,int ,scalar_t__,scalar_t__,int ) ;
 int MAKEINTRESOURCEW (scalar_t__) ;
 int RGB (int,int ,int) ;
 int hApplet ;

HIMAGELIST
InitImageList(UINT StartResource,
              UINT EndResource,
              UINT Width,
              UINT Height,
              ULONG type)
{
    HANDLE hImage;
    HIMAGELIST himl;
    UINT i;
    INT ret;


    himl = ImageList_Create(Width,
                            Height,
                            ILC_MASK | ILC_COLOR32,
                            EndResource - StartResource,
                            0);
    if (himl == ((void*)0))
        return ((void*)0);

    ret = 0;
    for (i = StartResource; i <= EndResource && ret != -1; i++)
    {
        hImage = LoadImageW(hApplet,
                            MAKEINTRESOURCEW(i),
                            type,
                            Width,
                            Height,
                            LR_LOADTRANSPARENT);
        if (hImage == ((void*)0))
        {
            ImageList_Destroy(himl);
            himl = ((void*)0);
            break;
        }

        if (type == IMAGE_BITMAP)
        {
            ret = ImageList_AddMasked(himl,
                                      hImage,
                                      RGB(255, 0, 128));
        }
        else if (type == IMAGE_ICON)
        {
            ret = ImageList_AddIcon(himl,
                                    hImage);
        }

        DeleteObject(hImage);
    }

    if (ret == -1)
    {
        ImageList_Destroy(himl);
        himl = ((void*)0);
    }

    return himl;
}
