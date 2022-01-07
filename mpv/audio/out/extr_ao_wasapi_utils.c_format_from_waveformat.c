
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct wasapi_sample_fmt {int bits; int used_msb; int * subtype; scalar_t__ mp_format; int member_0; } ;
struct TYPE_5__ {int wValidBitsPerSample; } ;
struct TYPE_6__ {TYPE_1__ Samples; int SubFormat; } ;
typedef TYPE_2__ WAVEFORMATEXTENSIBLE ;
struct TYPE_7__ {int wBitsPerSample; int wFormatTag; } ;
typedef TYPE_3__ WAVEFORMATEX ;
typedef int GUID ;


 scalar_t__ IsEqualGUID (int const*,int *) ;
 int KSDATAFORMAT_SUBTYPE_IEEE_FLOAT ;
 int KSDATAFORMAT_SUBTYPE_PCM ;



 struct wasapi_sample_fmt* wasapi_formats ;

__attribute__((used)) static struct wasapi_sample_fmt format_from_waveformat(WAVEFORMATEX *wf)
{
    struct wasapi_sample_fmt res = {0};

    for (int n = 0; wasapi_formats[n].mp_format; n++) {
        const struct wasapi_sample_fmt *fmt = &wasapi_formats[n];
        int valid_bits = 0;

        if (wf->wBitsPerSample != fmt->bits)
            continue;

        const GUID *wf_guid = ((void*)0);

        switch (wf->wFormatTag) {
        case 130: {
            WAVEFORMATEXTENSIBLE *wformat = (WAVEFORMATEXTENSIBLE *)wf;
            wf_guid = &wformat->SubFormat;
            if (IsEqualGUID(wf_guid, &KSDATAFORMAT_SUBTYPE_PCM))
                valid_bits = wformat->Samples.wValidBitsPerSample;
            break;
        }
        case 128:
            wf_guid = &KSDATAFORMAT_SUBTYPE_PCM;
            break;
        case 129:
            wf_guid = &KSDATAFORMAT_SUBTYPE_IEEE_FLOAT;
            break;
        }

        if (!wf_guid || !IsEqualGUID(wf_guid, fmt->subtype))
            continue;

        res = *fmt;
        if (valid_bits > 0 && valid_bits < fmt->bits)
            res.used_msb = valid_bits;
        break;
    }

    return res;
}
