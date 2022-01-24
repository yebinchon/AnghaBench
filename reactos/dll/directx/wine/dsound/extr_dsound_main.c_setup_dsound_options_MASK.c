#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ HKEY ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ DS_HW_ACCEL_BASIC ; 
 scalar_t__ DS_HW_ACCEL_EMULATION ; 
 scalar_t__ DS_HW_ACCEL_FULL ; 
 scalar_t__ DS_HW_ACCEL_STANDARD ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ HKEY_CURRENT_USER ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 void* FUNC4 (char*) ; 
 char* ds_default_bits_per_sample ; 
 void* ds_default_capture ; 
 char* ds_default_playback ; 
 char* ds_default_sample_rate ; 
 char* ds_emuldriver ; 
 char* ds_hel_buflen ; 
 scalar_t__ ds_hw_accel ; 
 char* ds_snd_queue_max ; 
 char* ds_snd_queue_min ; 
 char* ds_snd_shadow_maxsize ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 scalar_t__ FUNC7 (char*,char*) ; 
 char* FUNC8 (char*,char) ; 

void FUNC9(void)
{
    char buffer[MAX_PATH+16];
    HKEY hkey, appkey = 0;
    DWORD len;

    buffer[MAX_PATH]='\0';

    /* @@ Wine registry key: HKCU\Software\Wine\DirectSound */
    if (FUNC2( HKEY_CURRENT_USER, "Software\\Wine\\DirectSound", &hkey )) hkey = 0;

    len = FUNC0( 0, buffer, MAX_PATH );
    if (len && len < MAX_PATH)
    {
        HKEY tmpkey;
        /* @@ Wine registry key: HKCU\Software\Wine\AppDefaults\app.exe\DirectSound */
        if (!FUNC2( HKEY_CURRENT_USER, "Software\\Wine\\AppDefaults", &tmpkey ))
        {
            char *p, *appname = buffer;
            if ((p = FUNC8( appname, '/' ))) appname = p + 1;
            if ((p = FUNC8( appname, '\\' ))) appname = p + 1;
            FUNC6( appname, "\\DirectSound" );
            FUNC3("appname = [%s]\n", appname);
            if (FUNC2( tmpkey, appname, &appkey )) appkey = 0;
            FUNC1( tmpkey );
        }
    }

    /* get options */

    if (!FUNC5( hkey, appkey, "EmulDriver", buffer, MAX_PATH ))
        ds_emuldriver = FUNC7(buffer, "N");

    if (!FUNC5( hkey, appkey, "HelBuflen", buffer, MAX_PATH ))
        ds_hel_buflen = FUNC4(buffer);

    if (!FUNC5( hkey, appkey, "SndQueueMax", buffer, MAX_PATH ))
        ds_snd_queue_max = FUNC4(buffer);

    if (!FUNC5( hkey, appkey, "SndQueueMin", buffer, MAX_PATH ))
        ds_snd_queue_min = FUNC4(buffer);

    if (!FUNC5( hkey, appkey, "HardwareAcceleration", buffer, MAX_PATH )) {
	if (FUNC7(buffer, "Full") == 0)
	    ds_hw_accel = DS_HW_ACCEL_FULL;
	else if (FUNC7(buffer, "Standard") == 0)
	    ds_hw_accel = DS_HW_ACCEL_STANDARD;
	else if (FUNC7(buffer, "Basic") == 0)
	    ds_hw_accel = DS_HW_ACCEL_BASIC;
	else if (FUNC7(buffer, "Emulation") == 0)
	    ds_hw_accel = DS_HW_ACCEL_EMULATION;
    }

    if (!FUNC5( hkey, appkey, "DefaultPlayback", buffer, MAX_PATH ))
        ds_default_playback = FUNC4(buffer);

    if (!FUNC5( hkey, appkey, "MaxShadowSize", buffer, MAX_PATH ))
        ds_snd_shadow_maxsize = FUNC4(buffer);

    if (!FUNC5( hkey, appkey, "DefaultCapture", buffer, MAX_PATH ))
        ds_default_capture = FUNC4(buffer);

    if (!FUNC5( hkey, appkey, "DefaultSampleRate", buffer, MAX_PATH ))
        ds_default_sample_rate = FUNC4(buffer);

    if (!FUNC5( hkey, appkey, "DefaultBitsPerSample", buffer, MAX_PATH ))
        ds_default_bits_per_sample = FUNC4(buffer);

    if (appkey) FUNC1( appkey );
    if (hkey) FUNC1( hkey );

    FUNC3("ds_emuldriver = %d\n", ds_emuldriver);
    FUNC3("ds_hel_buflen = %d\n", ds_hel_buflen);
    FUNC3("ds_snd_queue_max = %d\n", ds_snd_queue_max);
    FUNC3("ds_snd_queue_min = %d\n", ds_snd_queue_min);
    FUNC3("ds_hw_accel = %s\n",
        ds_hw_accel==DS_HW_ACCEL_FULL ? "Full" :
        ds_hw_accel==DS_HW_ACCEL_STANDARD ? "Standard" :
        ds_hw_accel==DS_HW_ACCEL_BASIC ? "Basic" :
        ds_hw_accel==DS_HW_ACCEL_EMULATION ? "Emulation" :
        "Unknown");
    FUNC3("ds_default_playback = %d\n", ds_default_playback);
    FUNC3("ds_default_capture = %d\n", ds_default_playback);
    FUNC3("ds_default_sample_rate = %d\n", ds_default_sample_rate);
    FUNC3("ds_default_bits_per_sample = %d\n", ds_default_bits_per_sample);
    FUNC3("ds_snd_shadow_maxsize = %d\n", ds_snd_shadow_maxsize);
}