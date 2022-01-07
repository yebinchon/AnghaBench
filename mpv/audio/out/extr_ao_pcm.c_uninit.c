
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct priv {int data_length; int fp; scalar_t__ waveheader; } ;
struct ao {struct priv* priv; } ;
typedef int HANDLE ;


 scalar_t__ FILE_TYPE_DISK ;
 scalar_t__ GetFileType (int ) ;
 int MP_ERR (struct ao*,char*) ;
 int SEEK_SET ;
 int _fileno (int ) ;
 scalar_t__ _get_osfhandle (int ) ;
 int fclose (int ) ;
 scalar_t__ fseek (int ,int ,int ) ;
 int write_wave_header (struct ao*,int ,int) ;

__attribute__((used)) static void uninit(struct ao *ao)
{
    struct priv *priv = ao->priv;

    if (priv->waveheader) {
        bool broken_seek = 0;






        if (broken_seek || fseek(priv->fp, 0, SEEK_SET) != 0)
            MP_ERR(ao, "Could not seek to start, WAV size headers not updated!\n");
        else {
            if (priv->data_length > 0xfffff000) {
                MP_ERR(ao, "File larger than allowed for "
                       "WAV files, may play truncated!\n");
                priv->data_length = 0xfffff000;
            }
            write_wave_header(ao, priv->fp, priv->data_length);
        }
    }
    fclose(priv->fp);
}
